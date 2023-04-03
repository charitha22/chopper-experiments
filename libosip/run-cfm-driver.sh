#!/bin/bash

python3 ${KLEE_BUILD_DIR}/../scripts/cfm_driver/driver.py -i test-driver.bc -k driver_options.json

echo "Done" | mail -s "libosip run complete!" $USER