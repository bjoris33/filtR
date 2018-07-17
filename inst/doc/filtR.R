## ---- echo = FALSE, fig.align='center', out.width='50%', fig.cap='Figure 1: Example of two strongly associated operational taxonomic units, which also have a large difference in abundance. Rho is the calculated rho value for the two features, CLR Difference is the difference in the mean centered log ratio values between the two values, and the slope is determined by linear modeling of all the points.'----
knitr::include_graphics("good_example.png")

## ------------------------------------------------------------------------
library(filtR)

## ---- echo = FALSE, fig.align='center', out.width='50%', fig.cap='Figure 2: Example of a count table used by filtR. The first column contains taxonomic information for each OTU (row). Each subsequent column is an individual sequencing run (or sample) in the study. The data within the cells are how many times the OTU was observed in the sequencing run.'----
knitr::include_graphics("count_table.png")

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

## ---- out.width='50%'----------------------------------------------------
filtered <- filtR('SRP078943_taxonomy_abundances_SSU_v4.1.tsv', plot=TRUE)

## ---- echo = FALSE, fig.align='center', out.width='50%', fig.cap='Figure 3: Example of a bimodal dataset fooling `filtR`.'----
knitr::include_graphics("group_separation.png")

## ---- echo = FALSE, fig.align='center', out.width='50%', fig.cap='Figure 4: Bimodal dataset that would be a good example of `filtR` filtering if the samples had been separated based on sample acquisition location.'----
knitr::include_graphics("two_groups_good.png")

## ---- echo = FALSE, fig.align='center', out.width='50%', fig.cap='Figure 5: Example of data that pass the standard filtering cutoffs, but poorly fit the ideal slope of 1.'----
knitr::include_graphics("bad_example.png")

## ---- echo = FALSE, fig.align='center', out.width='50%', fig.cap='Figure 6: Pair of OTUs with a comparably high rho value and low CLR difference, which yields a lower slope.'----
knitr::include_graphics("highrho_lowclr.png")

## ---- echo = FALSE, fig.align='center', out.width='50%', fig.cap='Figure 7: Pair of OTUs with a comparably low rho value and high CLR difference, which yields a steeper slope.'----
knitr::include_graphics("lowrho_highclr.png")

## ---- error = TRUE, results = FALSE--------------------------------------
filtered <- filtR('SRP078943_taxonomy_abundances_SSU_v4.1.tsv', rho_CO = 0.99)

## ---- error = TRUE, results = FALSE--------------------------------------
filtered <- filtR('SRP078943_taxonomy_abundances_SSU_v4.1.tsv', clr_CO = 50)

