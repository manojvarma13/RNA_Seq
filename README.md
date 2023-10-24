# Short Read Alignment

## Sai Manoj Tekumalla

# Methods

## Use of short read aligned, GMAP:
Genomic Mapping and Alignment Program allows user to map and align the RNA short reads that were generated
during a RNA sequencing experiment that was performed on the cDNA sample of Aiptasia pallida, a sea anemon
e. Data from QC sequencing run was used in this case since working with a full data set is a tedious task. 
In this assignment, GMAP database was built using shell script, bash. Program named, AipBuild.sh, will al-
-low the GMAP database to be indexed and optimized for a faster alignment. The data is written to the out-
-put files. 

## Index intron splice sites:
Program named, buildIIT.sh will help in indexing all the intron splice sites from the GMAP database, also
called as implementation of interval index trees, IITs.

## Trim the reads:
The reads generated can be trimmed using trimmomatic. Trimmomatic is a java program which can be used in t-
-his case to trim all the reads generated by the previous program. In the program, trimAll.sh, path of the 
reads is given which contains the un-trimmed fastq files.Then the left and right suffix is defined by R1 
and R2 reads after which defines forward and reverse reads. Then the paired and unpaired directories will 
obtained and a for loop is initiated to perform the trim action for all the reads. In the loop path remove-
-d is defined which removes the path from filename.echo and samplenames is also used, filenames.echo is t-
-hen used to define the samplenames. Phred defines the quality encoding of the reads. The resulting trimm-
-ed reads are outputted to the trimAll.log folder.

## Align the trimmed reads:
Using the program named, alignAll.sh, align all the trimmed reads and output the files to alignAll.log. Th-
-is is done using GSNAP. This will produce the reads in the sam alignment format. GSNAP usually writes out
the sam alignment information directly to STDOUT, hence, they are redirected to a sam formatted files. 

## Sorting in BAM format:
sortAll.sh program sorts all the reads to the BAM format. It will sort all the trimmed files contained in t-
-he SAM folder to BAM format. This program is performed since most assemblers require SAM files to be sorte-
-d and in BAM format. Binary version of SAM is BAM. samtools is used in order to convert sam file to a sort-
-ed bam file. 

## Index and generate .bai files:
indexAll.sh program would generate all the .bai files and would output them all to the bam directory. samto-
-ols index command is used in this script which will index all the files, converts to .bai and stores them 
in the bam directory.  
 
# Citations
[1] RNA-seq analysis reveals extensive transcriptional plasticity to temperature stress in a freshwater fish species - BMC Genomics
Smith et al.
https://bmcgenomics.biomedcentral.com/articles/10.1186/1471-2164-14-375#Sec2

[2] https://onesearch.library.northeastern.edu/discovery/search?vid=01NEU_INST%3ANU&sortby=rank&lang=en

[3] GMAP: a genomic mapping and alignment program for mRNA and EST sequences
Wu & Watanabe
https://academic.oup.com/bioinformatics/article/21/9/1859/409207

[4] GMAP-GSNAP/README at master · juliangehring/GMAP-GSNAP
Juliangehring
https://github.com/juliangehring/GMAP-GSNAP/blob/master/README