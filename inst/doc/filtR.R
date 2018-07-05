## ------------------------------------------------------------------------
library(filtR)

## ------------------------------------------------------------------------
unfilt <- read.table('SRP078943_taxonomy_abundances_SSU_v4.1.tsv')
dim(unfilt)

## ------------------------------------------------------------------------
filtered <- filtR('SRP078943_taxonomy_abundances_SSU_v4.1.tsv')
dim(filtered)

## ------------------------------------------------------------------------
filtered <- filtR('SRP078943_taxonomy_abundances_SSU_v4.1.tsv', rho_CO = 0.6)

## ------------------------------------------------------------------------
filtered <- filtR('SRP078943_taxonomy_abundances_SSU_v4.1.tsv', clr_CO = 4)

