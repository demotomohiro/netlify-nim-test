#!/bin/bash

set -e
set -u

NIM_REQUIRED_VER="0.18.0"
: ${NETLIFY_BUILD_BASE="/opt/buildhome"}
NETLIFY_CACHE_DIR="$NETLIFY_BUILD_BASE/cache"
NIM_INSTALL_DIR="$NETLIFY_CACHE_DIR"

install_nim() {
  local nimver=$NIM_REQUIRED_VER

  rm -rf $NIM_INSTALL_DIR/nim

  wget -N -nv https://nim-lang.org/download/nim-$nimver.tar.xz
  wget -N -nv https://nim-lang.org/download/nim-$nimver.tar.xz.sha256

  sha256sum -c nim-$nimver.tar.xz.sha256

  if [ ! $? = 0 ]; then
    echo "Failed to download nim source code"
  fi

  tar xf nim-$nimver.tar.xz
  pushd nim-$nimver
  sh build.sh
  bin/nim c koch
  ./koch tools
  ./koch install $NIM_INSTALL_DIR
  popd
}

install_nim_check() {
  if command -v nim && nim e checknimver.nims $NIM_REQUIRED_VER
  then
    echo skip installing nim
  else
    install_nim
  fi
}

export PATH=$NIM_INSTALL_DIR/nim/bin:$PATH
install_nim_check
nim -v
nim c -r test.nim
