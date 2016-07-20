# T-DNA-insertion
Using BWA map reads to the reference(genome + T-DNA).
Filtering the discordant reads and chimeric reads according the information in sam file.
XA:   mutiple mapping
SA:   chimeric mapping
Identifying insertion sites according the filtered sam file using find_insert_position.pl.
We will get the insertion region and the number of supporting reads.
Get the whole number of reads in insertion region by bedtools depth.
Annotating the insertion region by bedtools intersect.
