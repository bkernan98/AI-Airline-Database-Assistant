# Airline Database Assistant

A small command-line tool I wrote for a database course. It connects to a MySQL
database of airline flights and lets you look things up and make changes through
a simple numbered menu. Find the cheapest flight, look up a customer's
reservation, add an airplane, and so on. You run it in a terminal, pick an
option, and it asks for whatever details it needs and prints the result.

It's a single Python file that talks to the database with pymysql, plus 
the SQL dumps that build the flights database it runs against.

## What it does

The menu has seven options:

1. **Find the cheapest flight**: give it a departure airport, a destination,
   and a date (`yyyy-mm-dd`), and it finds the matching flight with the lowest
   fare.
2. **Find a customer's flight and seat**: type a name, get back their flight
   number and seat.
3. **List an airline's non-stop flights**: type an airline name, get every
   one of its single-leg (no stops) flights.
4. **Add a new airplane**: enter the seat count and type; it picks the next
   free ID automatically and inserts it.
5. **Bump up low-cost fares**: raise every fare of $200 or less by a factor
   you choose (e.g. `0.2` for +20%), and it reports how many it changed.
6. **Remove a seat reservation**: give a flight number and a customer name,
   and it frees up the seat.
7. **Exit.**

Options 1-3 only read. Options 4-6 actually change the database and commit the
change, so those edits stick.

## The database

The sql files are MySQL dumps from my flights database, one per table, that create each
table and load it with sample data. Together they make up the schema the tool
runs against:

* airport - airport codes with name, city, and state.
* airplane_type - each model (737, A320, CRJ700, …) with its max seats
and manufacturer.
* airplane - individual planes: an ID, seat count, and which type it is.
can_land - which airplane types are cleared to land at which airports.
* flight - flight numbers, the airline that runs them, and whether they
fly on weekdays.
* flight_leg - the scheduled legs that make up each flight (departure and
arrival airports plus scheduled times). A flight with more than one leg makes
a stop; a flight with exactly one leg is non-stop.
* leg_instance - an actual dated run of a leg: the date, seats still
available, which airplane is assigned, and the real departure/arrival times.
* fare - the fare for each flight: a code (L/Y/B/F), the amount, and
whether it has restrictions.
* seat_reservation - who's booked what: flight, leg, date, seat number,
and the customer's name and phone.


The Python tool mainly touches flight, flight_leg, leg_instance, fare,
seat_reservation, and airplane. The other three (airport,
airplane_type, can_land) round out the schema and the foreign-key
relationships.
