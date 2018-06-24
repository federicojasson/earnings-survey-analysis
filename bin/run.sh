#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${0}")/.." && pwd)"
src_dir="${root_dir}/src"

docker run -it \
    -p 8888:8888 \
    -v "${src_dir}":/home/jovyan \
    jupyter/r-notebook:03b897d05f16
