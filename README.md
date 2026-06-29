# Airline Database Assistant (Python)

A small command-line tool I wrote for a database course. It connects to a MySQL
database of airline flights and lets you look things up and make changes through
a simple numbered menu — find the cheapest flight, look up a customer's
reservation, add an airplane, and so on. You run it in a terminal, pick an
option, and it asks for whatever details it needs and prints the result.

It's a single Python file that talks to the database with `pymysql`.

## What it does

The menu has seven options:

1. **Find the cheapest flight** — give it a departure airport, a destination,
   and a date (`yyyy-mm-dd`), and it finds the matching flight with the lowest
   fare.
2. **Find a customer's flight and seat** — type a name, get back their flight
   number and seat.
3. **List an airline's non-stop flights** — type an airline name, get every
   one of its single-leg (no stops) flights.
4. **Add a new airplane** — enter the seat count and type; it picks the next
   free ID automatically and inserts it.
5. **Bump up low-cost fares** — raise every fare of $200 or less by a factor
   you choose (e.g. `0.2` for +20%), and it reports how many it changed.
6. **Remove a seat reservation** — give a flight number and a customer name,
   and it frees up the seat.
7. **Exit.**

Options 1–3 only read. Options 4–6 actually change the database and commit the
change, so those edits stick.
