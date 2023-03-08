#!/bin/bash

ulimit -s unlimited
rm -rf /tmp/sandbox && mkdir -p /tmp/sandbox

${KLEE_BUILD_DIR}/bin/klee \
    --output-dir=out-klee \
    --simplify-sym-indices \
    --max-time=3600 \
    --max-memory=4096 \
    --external-calls=all \
    --only-output-states-covering-new \
    --libc=uclibc \
    --run-in-dir=/tmp/sandbox \
    --posix-runtime \
    --search=nurs:covnew \
    --klee-cfmse \
    ./bc-1.06/build/bc/bc.bc --sym-args 0 8 16 --sym-files 1 64 --sym-stdin 8 --sym-stdout
