# filtR
filtR is an R package developed to filter operational taxonomic units (OTUs) or amplicon sequence variants (ASVs) from count tables if they are determined to be generated by sequencing error and/or PCR error.

The filtR R package currently contains a single function, filtR().

# Software Requirements
filtR was developed on R version 3.5.0, so it is recommended to use the same version or higher to avoid any compatibility issues.
Additionally two separate R packages are implimented within filtR:
propr -- Version 3.5.1 was used for the development of filtR.
ALDEx2 -- Version 1.12.0 was used for the development of filtR.

# Data Input
filtR reads a local stored count table from the 'count_file = ' term within the function. The count table must be formatted with samples as columns and OTUs/ASVs as rows. Count tables with and without columns for taxonomy are supported by filtR.

# Data Output
filtR returns to its assigned variable a count table in the same format as the original table, less the rows (OTUs/ASVs) that filtR determined to be error-derived. 

# Filtering Parameters
rho_CO: Defaults to 0.7. Range 0 to 1. $\rho$ is a statistic can be used to assess $\beta$ association between a pair of features. As the value of $\rho$ approaches 1, it can be assumed that the two features used to calculate $\rho$ have a constant ratio across the dataset and are therefore associated. The premise of ASVs and OTUs is generally that each individual ASV and OTU, for the most part, should lack association with other ASVs/OTUs because they are independent entities. Error-derived OTUs/ASVs will occur as a constant ratio of the OTU they are derived from and therefore will have a high $\rho% value.

clr_CO: Defaults to 5 and can be assigned any value greater than 0. If an OTU/ASV is error-derived, it will not only have a high $\rho$ value, it will also have a high difference in centered log ratio compared to the OTU/ASV it is derived from. It is not recommended that this cutoff be set lower than 5.
