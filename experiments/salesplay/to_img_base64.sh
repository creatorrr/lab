#!/usr/bin/env bash

image_url="${1}"
alt="${2:=Image}"
image_base64="$(curl $image_url | base64 -w 0)"

echo "<img alt='${alt}' src='data:image/png;base64,${image_base64}' />"
