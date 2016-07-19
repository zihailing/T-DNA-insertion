#!/bin/sh
cat TDX0011_1_tdna.bwa.sam|awk '$3 ~ /Chr/ && ($7 ~ /p/ || $0 ~ /SA:Z:p/){print $0}' >TDX0011_1_tdna.filter.sam
cat TDX0011_2_tdna.bwa.sam|awk '$3 ~ /Chr/ && ($7 ~ /p/ || $0 ~ /SA:Z:p/){print $0}' >TDX0011_2_tdna.filter.sam
cat TDX0011_3_tdna.bwa.sam|awk '$3 ~ /Chr/ && ($7 ~ /p/ || $0 ~ /SA:Z:p/){print $0}' >TDX0011_3_tdna.filter.sam
