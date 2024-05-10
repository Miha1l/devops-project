#!/bin/bash

stdout_file="/proc/1/fd/1"

stderr_file="/proc/1/fd/2"

all_tests=0

if [ -z "${STYLE}" ] && [ -z "${STATIC}" ] && [ -z "${INTEGRATION}" ];
then
    all_tests=1
fi

if [ "$all_tests" == 1 ] || [ ${STYLE} == 1 ];
then
    ./style/run_style_tests.sh >> $stdout_file 2>> $stderr_file
fi

if [ "$all_tests" == 1 ] || [ ${STATIC} == 1 ];
then
    ./static/run_static_tests.sh >> $stdout_file 2>> $stderr_file
fi

if [ "$all_tests" == 1 ] || [ ${INTEGRATION} == 1 ];
then
    ./integration/run_integration_tests.sh >> $stdout_file 2>> $stderr_file
fi