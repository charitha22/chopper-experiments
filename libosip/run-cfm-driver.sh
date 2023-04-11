#!/bin/bash

ulimit -s unlimited

mkdir -p /local/scratch/a/$USER/libosip
python3 ${KLEE_BUILD_DIR}/../scripts/cfm_driver/driver.py -i test-driver.bc -k driver_options.json -r /local/scratch/a/$USER/libosip

echo "Done" | mail -s "libosip run complete!" $USER