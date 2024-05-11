#!/bin/bash

stdout_file="/proc/1/fd/1"

stderr_file="/proc/1/fd/2"

if [ ${STYLE} == 1 ];
then
    bash ./style/run_style_tests.sh >> $stdout_file 2>> $stderr_file
fi

if [ ${STATIC} == 1 ];
then
    bash ./static/run_static_tests.sh >> $stdout_file 2>> $stderr_file
fi

if [ ${INTEGRATION} == 1 ];
then
    bash ./integration/run_integration_tests.sh >> $stdout_file 2>> $stderr_file
fi