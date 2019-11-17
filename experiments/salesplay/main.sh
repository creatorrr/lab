#!/usr/bin/env bash

script="${1}"

for product_code in `xsv select product_code salesplay.csv | tail -n +2`; do
    bash "${script}" "${product_code}" "${@:2}"
done
