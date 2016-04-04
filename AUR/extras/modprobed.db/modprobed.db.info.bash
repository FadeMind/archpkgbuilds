#!/bin/bash
for f in $(cat modprobed.db); \
do printf "\n------------------------------------------------------------------------------------------------------------------------------------\n" && \
modinfo $f; \
done > "modprobed.db.info.$(uname -r).log" 2>&1
