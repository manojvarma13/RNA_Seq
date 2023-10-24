#!/usr/bin/env bash
#indexAll.sh

Suffix=".sorted.bam"

bamPath="bam/"

function indexAll {
    for file in $bamPath*$Suffix
    do
        pathRemoved="${file/$bamPath/}"
        sampleName="${pathRemoved/$Suffix/}"

        echo $sampleName
        samtools index $bamPath${sampleName}.sorted.bam
    done
}
indexAll 1>indexAll.log 2>indexAll.err
