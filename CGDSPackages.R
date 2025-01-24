# Define utility functions for package installation
install_if_missing <- function(pkg) {
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg)
  }
}

bioc_install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    BiocManager::install(pkg)
  }
}

# Install base packages
install_if_missing("tidyverse")       # For data handling and visualisation
install_if_missing("ggpubr")          # Publication-ready plots
install_if_missing("openxlsx")        # Excel file handling

# Bioconductor setup
if (!requireNamespace("BiocManager")) install.packages("BiocManager")

# Devtools for GitHub package installations
if (!require("devtools")) install.packages("devtools")
library(devtools)

# RNA-Seq packages
bioc_install_if_missing("Biobase")
bioc_install_if_missing("maftools")
bioc_install_if_missing("DESeq2")
bioc_install_if_missing("EnhancedVolcano")
bioc_install_if_missing("AnnotationDbi")
bioc_install_if_missing("org.Hs.eg.db")
bioc_install_if_missing("clusterProfiler")
bioc_install_if_missing("fgsea")
bioc_install_if_missing("qusage")
install_if_missing("msigdbr")
install_if_missing("data.table")

# DNA Methylation packages
bioc_install_if_missing("minfi")
bioc_install_if_missing("IlluminaHumanMethylation450kanno.ilmn12.hg19")
bioc_install_if_missing("IlluminaHumanMethylation450kmanifest")
bioc_install_if_missing("missMethyl")
bioc_install_if_missing("minfiData")
bioc_install_if_missing("DMRcate")
bioc_install_if_missing("methylationArrayAnalysis")

# Proteomics packages
install_if_missing("data.table")
bioc_install_if_missing("limma")
bioc_install_if_missing("ComplexHeatmap")
devtools::install_github("CutillasLab/protools2@*release")

# ChIP-Seq packages
bioc_install_if_missing("ChIPseeker")
bioc_install_if_missing("TxDb.Hsapiens.UCSC.hg19.knownGene")
bioc_install_if_missing("clusterProfiler")

# Tumor Evolution packages
system("wget https://cran.r-project.org/src/contrib/Archive/NORMT3/NORMT3_1.0.4.tar.gz")
install_if_missing()("NORMT3_1.0.4.tar.gz", repos = NULL, type = "source")

devtools::install_github("genome/bmm")
devtools::install_github("genome/sciClone")

# Cancer Genomics using Single-cell DNA-seq
install_if_missing("gplots")
install_if_missing("Rcpp")
bioc_install_if_missing("BSgenome.Hsapiens.UCSC.hg38")
bioc_install_if_missing("AneuFinder")

# Tumour microenvironment
devtools::install_github("dviraran/xCell")
devtools::install_github("GfellerLab/EPIC", build_vignettes=TRUE)
install_if_missing("curl")
devtools::install_github("ebecht/MCPcounter", ref="master", subdir="Source")
devtools::install_github("BioInforCore-BCI/Decosus")
install_if_missing("remotes")
remotes::install_github("omnideconv/immunedeconv")
bioc_install_if_missing("GVSA")
bioc_install_if_missing("GSEABase")
bioc_install_if_missing("limma")