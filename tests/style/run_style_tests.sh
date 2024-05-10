#!/bin/bash

app_dir="/tester/EXAMPLE_APP"

echo "[$(date "+%d-%m-%Y %T")]" "Running pindent formatting"

for file in "$app_dir"/*.py;
do
    echo "[$(date "+%d-%m-%Y %T")]" "Formatting file: $file"
    python2.7 /tester/style/pindent.py -c "$file"
done

echo "[$(date "+%d-%m-%Y %T")]" "Finish pindent formatting"