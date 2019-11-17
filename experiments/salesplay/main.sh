#!/usr/bin/env bash

for product_code in `xsv select product_code salesplay.csv | tail -n +2`; do
    ./update_product.sh "${product_code}" STOCK_CONTROL 1
done
