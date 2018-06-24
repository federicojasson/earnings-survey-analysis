#!/usr/bin/env bash
set -euo pipefail

root_dir="$(dirname "${0}")/.."
src_dir="${root_dir}/src"

docker run -d -p 8888:8888 -v "${src_dir}":/home/jovyan jupyter/r-notebook:03b897d05f16
