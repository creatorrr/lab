#!/usr/bin/env bash

# URL vars
ORIGIN="http://barcodes4.me"
API_ROOT="${ORIGIN}/barcode"

# Data vars
value="${1}" # e.g. TAB27
image_format="${2:-png}" # e.g. png, gif, jpg
barcode_type="${3:-c128b}" # e.g. c128b, c128a, ...

# - c128a supports numbers, upper-case letters, and control characters, such as tab and new-line.
# - c128b supports numbers, upper- and lower-case letters and some additional characters.
# - c128c supports numbers only. It must have an even number of digits.

# Params
IsTextDrawn=1
TextSize=35
margin=30
resolution=3
height=200

params=""
  params+="&IsTextDrawn=${IsTextDrawn}"
  params+="&TextSize=${TextSize}"
  params+="&margin=${margin}"
  params+="&resolution=${resolution}"
  params+="&height=${height}"

# Payload
payload="${barcode_type}/${value}.${image_format}?${params}"

echo "${API_ROOT}/${payload}"
