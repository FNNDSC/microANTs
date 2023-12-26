#!/bin/bash -e

if [ "$#" != '2' ]; then
  echo "usage: $0 prog /output/dir"
  exit 1
fi

if [ -z "$1" ]; then
  echo "prog cannot be empty"
  exit 1
fi

WHICH_PROG=$(which $1)
# INSTALL_DIR=$(dirname $(dirname $WHICH_PROG))
INSTALL_DIR=/opt  # hard-coded to get libiconv.so.2

REQUIRED_LIBS="$(ldd $WHICH_PROG | grep -oP '(?<==> )'$INSTALL_DIR'/.+(?= \()')"

mkdir -vp $2/lib $2/bin
cp -rvL $REQUIRED_LIBS $2/lib
cp -v $WHICH_PROG $2/bin
