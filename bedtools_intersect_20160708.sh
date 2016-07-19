#!/bin/sh
bedtools intersect -wo -a TDX0011_1_tdna.filter.depth -b ~/zihailing/species_20151012/Ath/TAIR10_GFF3_genes_for_intersect.gff  >TDX0011_1_tdna.filter.annotation
bedtools intersect -wo -a TDX0011_2_tdna.filter.depth -b ~/zihailing/species_20151012/Ath/TAIR10_GFF3_genes_for_intersect.gff  >TDX0011_2_tdna.filter.annotation
bedtools intersect -wo -a TDX0011_3_tdna.filter.depth -b ~/zihailing/species_20151012/Ath/TAIR10_GFF3_genes_for_intersect.gff  >TDX0011_3_tdna.filter.annotation
