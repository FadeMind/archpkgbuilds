#!/bin/bash
sudo acpidump > acpidump.out
sudo acpixtract -a acpidump.out
ls -1|grep dat > DAT.LIST
for f in $(cat DAT.LIST); do
iasl -d  $f 
done > DAT.LOG 2>&1 
ls -1|grep dsl > DSL.LIST
for f in $(cat DSL.LIST); do
iasl -tc $f 
done > DSL.LOG 2>&1 
