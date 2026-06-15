#!/bin/bash

cp ${BUILD_PREFIX}/share/gnuconfig/config.* ${SRC_DIR}/build/autoconf/.

export DISABLE_AUTOBREW=1

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
