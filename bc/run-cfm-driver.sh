#!/bin/bash

ulimit -s unlimited

mkdir -p /local/scratch/a/$USER/bc
python3 ${KLEE_BUILD_DIR}/../scripts/cfm_driver/driver.py -i ./bc-1.06/build/bc/bc.bc -k driver_options.json -r /local/scratch/a/$USER/bc

echo "Done" | mail -s "bc run complete!" $USER