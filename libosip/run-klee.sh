#!/bin/bash

ulimit -s unlimited

${KLEE_BUILD_DIR}/bin/klee \
    -max-time=3600 \
    -max-memory=4096 \
    -simplify-sym-indices \
    -libc=uclibc \
    -search=nurs:covnew \
    -klee-cfmse \
    -klee-cfmse-run-on-loops=false \
    ./test-driver.bc 10
