#!/bin/bash

ulimit -s unlimited

mkdir -p /local/scratch/a/$USER/libyaml
python3 ${KLEE_BUILD_DIR}/../scripts/cfm_driver/driver.py -e -i test-driver.bc -k driver_options.json -r /local/scratch/a/$USER/libyaml

echo "Done" | mail -s "libyaml run complete!" $USER