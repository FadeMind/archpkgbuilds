#!/usr/bin/env bash
sudo cat /sys/firmware/acpi/tables/DSDT > dsdt.dat;\
/usr/bin/iasl -d dsdt.dat;\
/usr/bin/iasl -tc dsdt.dsl;\
/usr/bin/iasl -ic dsdt.dsl
