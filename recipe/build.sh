#!/bin/bash

# get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* build/autoconf/.

export DISABLE_AUTOBREW=1

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
