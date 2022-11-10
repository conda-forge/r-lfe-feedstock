#!/bin/bash

export DISABLE_AUTOBREW=1

# swap in updated config.sub and config.guess
rm -f build/autoconf/config.{sub,guess}
cp $BUILD_PREFIX/share/gnuconfig/config.{sub,guess} build/autoconf/.

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
