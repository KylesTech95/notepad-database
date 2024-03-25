#!/bin/bash

# Plug in database
PSQL="psql -X --username=kylestech95 --dbname=notes --tuples-only -c"
# truncate data
# echo $($PSQL "alter sequence notepad_id_seq restart with 1;truncate notepad;")

echo -e "\n~~~ Welcome to Notepad ~~~\n"
sleep 1
echo -e "\nEnter notes\n"

read INPUT
INSERT_NOTES=$($PSQL "INSERT INTO notepad(notes) values('$INPUT');")

echo $INSERT_NOTES