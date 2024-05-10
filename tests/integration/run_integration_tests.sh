#!/bin/bash

tests_dir="/tester/integration"

echo "[$(date "+%d-%m-%Y %T")]" "Running integration tests"
python3 "$tests_dir"/integration_tests.py
echo "[$(date "+%d-%m-%Y %T")]" "Finish integration tests"
