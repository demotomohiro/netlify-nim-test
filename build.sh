#!/bin/bash

set -e
set -u

src_dir="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
source "$src_dir/scripts/installnim.sh"

install_nim_check "0.19.0"
cd "$src_dir"
nim c -r -d:release "$src_dir/src/sampleblog.nim"
