import pymysql

db = pymysql.connect(host='127.0.0.1',
                    user='mp2',
                    password='eecs116',
                    db='flights')
cur = db.cursor()

def print_menu():
    print("\n1. Find the cheapest flight")
    print("2. Find flight & seat info for a customer")
    print("3. Find all non-stop flights for an airline")
    print("4. Add a new airplane")
    print("5. Increase low-cost fares (≤ $200) by factor")
    print("6. Remove a seat reservation")
    print("7. Exit")

def find_cheapest_flight():
    depart = input("Please enter the airport code for the departure airport: ").strip().upper()
    dest   = input("Please enter the airport code for the destination airport: ").strip().upper()
    date   = input("What is the date of the flight in yyyy-mm-dd? ").strip()
    sql = """
        SELECT f.Flight_number, MIN(fa.Amount) AS min_fare
        FROM   Flight f
        JOIN   Flight_leg fl  ON f.Flight_number = fl.Flight_number
        JOIN   Leg_instance li ON fl.Flight_number = li.Flight_number
                               AND fl.Leg_number   = li.Leg_number
        JOIN   Fare fa        ON f.Flight_number   = fa.Flight_number
        WHERE  fl.Departure_airport_code = %s
          AND  fl.Arrival_airport_code   = %s
          AND  li.Leg_date               = %s
        GROUP  BY f.Flight_number
        ORDER  BY min_fare ASC
        LIMIT  1
    """
    cur.execute(sql, (depart, dest, date))
    row = cur.fetchone()
    if row:
        flight_number, fare_amount = row
        print(f"\nResult: The cheapest flight is {flight_number}, and the cost is ${fare_amount:.2f}.")
    else:
        print("\nNo flights found")


def find_customer_flight():
    cust_name = input("Please enter the customer's name: ").strip()
    sql = """
        SELECT Flight_number, Seat_number
        FROM   Seat_reservation
        WHERE  Customer_name = %s
        LIMIT  1
    """
    cur.execute(sql, (cust_name,))
    row = cur.fetchone()
    if row:
        flight_number, seat_number = row
        print(f"\nResult: The flight number is {flight_number}, and the seat number is {seat_number}.")
    else:
        print("\nNo reservation found")


def find_nonstop_flights():
    airline_name = input("What is the name of the airline? ").strip()
    sql = """
        SELECT f.Flight_number
        FROM   Flight f
        WHERE  f.Airline = %s
          AND  (SELECT COUNT(*)
                FROM   Flight_leg fl2
                WHERE  fl2.Flight_number = f.Flight_number) = 1
        ORDER  BY f.Flight_number
    """
    cur.execute(sql, (airline_name,))
    rows = cur.fetchall()
    if rows:
        flight_list = ", ".join(str(r[0]) for r in rows)
        print(f"\nResult: The non-stop flights are: {flight_list}.")
    else:
        print("\nNo non-stop flights found")


def add_airplane():
    total_seats   = input("Please enter the total number of seats: ").strip()
    airplane_type = input("Please enter the airplane type: ").strip()
    cur.execute("SELECT MAX(Airplane_id) FROM Airplane")
    max_id = cur.fetchone()[0]
    new_id = (max_id or 0) + 1
    sql = """
        INSERT INTO Airplane (Airplane_id, Total_number_of_seats, Airplane_type)
        VALUES (%s, %s, %s)
    """
    cur.execute(sql, (new_id, total_seats, airplane_type))
    db.commit()
    print(f"\nResult: The new airplane has been added with id: {new_id}.")


def increase_low_fares():
    try:
        factor = float(input("Please enter a factor (e.g. 0.2 will increase all fares by 20%): ").strip())
    except ValueError:
        print("Enter a numeric value.")
        return
    cur.execute("SELECT COUNT(*) FROM Fare WHERE Amount <= 200")
    num_affected = cur.fetchone()[0]
    sql = "UPDATE Fare SET Amount = Amount * (1 + %s) WHERE Amount <= 200"
    cur.execute(sql, (factor,))
    db.commit()
    print(f"\nResult: {num_affected} fares are affected.")


def remove_reservation():
    flight_number = input("Please enter the flight number: ").strip()
    cust_name     = input("Please enter the customer name: ").strip()
    sql_select = """
        SELECT Seat_number
        FROM   Seat_reservation
        WHERE  Flight_number = %s
          AND  Customer_name = %s
        LIMIT  1
    """
    cur.execute(sql_select, (flight_number, cust_name))
    row = cur.fetchone()
    if row:
        seat_number = row[0]
        sql_delete = """
            DELETE FROM Seat_reservation
            WHERE  Flight_number = %s
              AND  Customer_name = %s
        """
        cur.execute(sql_delete, (flight_number, cust_name))
        db.commit()
        print(f"\nResult: Seat {seat_number} is released.")
    else:
        print("\nNo reservation found")


def main():
    actions = {
        '1': find_cheapest_flight,
        '2': find_customer_flight,
        '3': find_nonstop_flights,
        '4': add_airplane,
        '5': increase_low_fares,
        '6': remove_reservation,
    }
    while True:
        print_menu()
        choice = input("Please select an option (1-7): ").strip()
        if choice == '7':
            break
        elif choice in actions:
            actions[choice]()
        else:
            print("\nInvalid option.")
    db.close()

if __name__ == "__main__":
    main()