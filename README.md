WHAT THIS PROGRAM DOES

This is a small command-line program that connects to a MySQL database
of airline flights and lets you look up and change information through a
simple numbered menu. You run it in a terminal, type a number to pick an
action, and the program asks you for whatever details it needs (like an
airport code or a customer name) and prints the result. It is written in
Python and uses the pymysql library to talk to the database.


MENU OPTIONS

1. Find the cheapest flight
   You enter a departure airport code, a destination airport code, and a
   date (in the format yyyy-mm-dd, for example 2025-12-25). The program
   finds every flight that matches and tells you which one has the lowest
   fare, along with its price.

2. Find flight and seat info for a customer
   You enter a customer's name. The program looks up that person's
   reservation and tells you their flight number and seat number.

3. Find all non-stop flights for an airline
   You enter the name of an airline. The program lists every flight from
   that airline that has only one leg, meaning it flies straight from
   start to finish with no stops in between.

4. Add a new airplane
   You enter the total number of seats and the airplane type. The program
   automatically picks the next available airplane ID number, adds the new
   airplane to the database, and tells you the ID it was given.

5. Increase low-cost fares (those that are $200 or less) by a factor
   You enter a factor as a decimal. For example, typing 0.2 raises all
   qualifying fares by 20 percent. The program tells you how many fares
   were changed. Only fares of $200 or less are affected.

6. Remove a seat reservation
   You enter a flight number and a customer name. If a matching
   reservation exists, the program deletes it and tells you which seat was
   freed up.

7. Exit
   Closes the connection to the database and ends the program.
