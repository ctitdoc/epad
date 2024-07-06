#!/bin/bash
## to install weasyprint : sudo apt install weasyprint
## for moreinfo see: https://packages.debian.org/source/sid/weasyprint
## and https://weasyprint.org/
weasyprint $1 $1.pdf;
echo -n $1.pdf;
