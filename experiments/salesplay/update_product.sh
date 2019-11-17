#!/usr/bin/env bash

# URL vars
ORIGIN="https://cloud.salesplaypos.com"
API_ROOT="${ORIGIN}/ajax"
SCRIPT="manage_product_detail_update_ajax.php"

# Auth vars
SPL_USERNAME="diwank.singh%40gmail.com"
SPL_PASSWORD="ladygaga123"
PHPSESSID="2tf67h007f3ob6060jso6hhnm7"
MASTER_USERNAME="SP15499060"
user_name="diwank.singh@gmail.com"

COOKIE=""
  COOKIE+="SPL_USERNAME=${SPL_USERNAME};"
  COOKIE+="SPL_PASSWORD=${SPL_PASSWORD};"
  COOKIE+="PHPSESSID=${PHPSESSID};"

# Data vars
product_code="${1}" # e.g. TAB27
product_change_column_type="${2}" # e.g. STOCK_CONTROL
value="${3:=1}" # e.g. 1

id_info="user_name=${user_name}&MASTER_USERNAME=${MASTER_USERNAME}"
change_type=""
  change_type+="product_code=${product_code}"
  change_type+="&product_change_column_type=${product_change_column_type}"

params="status=${value}&is_centeralise=0&t=1"
payload="${params}&${id_info}&${change_type}"

curl "${API_ROOT}/${SCRIPT}" \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36' \
  -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' \
  -H "Origin: ${ORIGIN}" \
  -H "Cookie: ${COOKIE}" \
    --data "${payload}"
