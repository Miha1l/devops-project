#!/bin/bash

app_dir="/tester/EXAMPLE_APP"
rc_filepath="/tester/static/.pylintrc"

echo "[$(date "+%d-%m-%Y %T")]" "Running pylint tests"
pylint --rcfile="$rc_filepath" "$app_dir"
echo "[$(date "+%d-%m-%Y %T")]" "Finish pylint tests"
