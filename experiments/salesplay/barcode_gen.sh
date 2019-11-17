#!/usr/bin/env bash

# URL vars
ORIGIN="http://barcodes4.me"
API_ROOT="${ORIGIN}/barcode"

/c128b/TAB-1.png

# Data vars
barcode_type="${1}" # e.g. TAB27
image_format="${2:-png}" # e.g. png, gif, jpg
barcode_type="${3:-128b}" # e.g. 128b, 128a, ...
product_change_column_type="${2}" # e.g. STOCK_CONTROL
value="${3:=1}" # e.g. 1

id_info="user_name=${user_name}&MASTER_USERNAME=${MASTER_USERNAME}"
change_type=""
  change_type+="product_code=${product_code}&"
  change_type+="product_change_column_type=${product_change_column_type}"

params="is_centeralise=0&status=${value}&t=${value}"
payload="${params}&${id_info}&${change_type}"

curl "${API_ROOT}/${SCRIPT}" \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36' \
  -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' \
  -H "Origin: ${ORIGIN}" \
  -H "Cookie: ${COOKIE}" \
    --data "${payload}"

IsTextDrawn=1&
TextSize=25&
margin=20&
resolution=2&
height=200&

# - Subset A supports numbers, upper-case letters, and control characters, such as tab and new-line.
# - Subset B supports numbers, upper- and lower-case letters and some additional characters.
# - Subset C supports numbers only. It must have an even number of digits.
