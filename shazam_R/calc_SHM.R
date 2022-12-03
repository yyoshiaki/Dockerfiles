#! /usr/local/bin/Rscript

# Rscript calc_SHM.R inputdb.tsv outputdb.tsv

library(shazam)
library(readr)

args1 = commandArgs(trailingOnly=TRUE)[1]
args2 = commandArgs(trailingOnly=TRUE)[2]

db <- read_delim(args1, '\t')
db_obs <- observedMutations(db, sequenceColumn="germline_alignment",
                            germlineColumn="germline_alignment_d_mask",
                            regionDefinition=NULL,
                            frequency=TRUE, 
                            nproc=10)
write_delim(db_obs, args2, delim='\t')