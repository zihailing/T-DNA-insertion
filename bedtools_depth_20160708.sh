#!/bin/sh
bedtools multicov -bed TDX0011_1_tdna.filter.bed -bams TDX0011_1_tdna.sort.bam >TDX0011_1_tdna.filter.depth
bedtools multicov -bed TDX0011_2_tdna.filter.bed -bams TDX0011_2_tdna.sort.bam >TDX0011_2_tdna.filter.depth
bedtools multicov -bed TDX0011_3_tdna.filter.bed -bams TDX0011_3_tdna.sort.bam >TDX0011_3_tdna.filter.depth
