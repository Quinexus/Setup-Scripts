# Define universal package installation function
check_install <- function(pkg, source = "CRAN", url = NULL) {
  if (!require(pkg, character.only = TRUE, quietly = TRUE)) {
    if (source == "CRAN") {
      install.packages(pkg)
    } else if (source == "Bioconductor") {
      if (!require("BiocManager", quietly = TRUE)) install.packages("BiocManager")
      BiocManager::install(pkg)
    } else if (source == "source" && !is.null(url)) {
      install.packages(url, repos = NULL, type = "source")
    } else if (source == "github" && !is.null(url)) {
      if (!require("devtools", quietly = TRUE)) install.packages("devtools")
      devtools::install_github(url)
    }
  }
}

# Install base packages
check_install("tidyverse") # For data handling and visualisation
check_install("ggpubr") # Publication-ready plots
check_install("openxlsx")

# RNA-Seq packages
check_install("Biobase", source = "Bioconductor")
check_install("maftools", source = "Bioconductor")
check_install("DESeq2", source = "Bioconductor")
check_install("EnhancedVolcano", source = "Bioconductor")
check_install("AnnotationDbi", source = "Bioconductor")
check_install("org.Hs.eg.db", source = "Bioconductor")
check_install("clusterProfiler", source = "Bioconductor")
check_install("fgsea", source = "Bioconductor")
check_install("qusage", source = "Bioconductor")
check_install("msigdbr")
check_install("data.table")

# DNA Methylation packages
check_install("minfi", source = "Bioconductor")
check_install("IlluminaHumanMethylation450kanno.ilmn12.hg19", source = "Bioconductor")
check_install("IlluminaHumanMethylation450kmanifest", source = "Bioconductor")
check_install("missMethyl", source = "Bioconductor")
check_install("minfiData", source = "Bioconductor")
check_install("DMRcate", source = "Bioconductor")
check_install("methylationArrayAnalysis", source = "Bioconductor")

# Proteomics packages
check_install("data.table")
check_install("limma", source = "Bioconductor")
check_install("ComplexHeatmap", source = "Bioconductor")
check_install("protools2", source = "github", url = "CutillasLab/protools2@*release")

# ChIP-Seq packages
check_install("ChIPseeker", source = "Bioconductor")
check_install("TxDb.Hsapiens.UCSC.hg19.knownGene", source = "Bioconductor")
check_install("clusterProfiler", source = "Bioconductor")

# Tumor Evolution packages
system("wget https://cran.r-project.org/src/contrib/Archive/NORMT3/NORMT3_1.0.4.tar.gz")
check_install("NORMT3", source = "source", url = "NORMT3_1.0.4.tar.gz")
check_install("bmm", source = "github", url = "genome/bmm")
check_install("sciClone", source = "github", url = "genome/sciClone")

# Cancer Genomics using Single-cell DNA-seq
check_install("gplots")
check_install("Rcpp")
check_install("BSgenome.Hsapiens.UCSC.hg38", source = "Bioconductor")
check_install("AneuFinder", source = "Bioconductor")

# Tumour microenvironment
check_install("xCell", source = "github", url = "dviraran/xCell")
check_install("EPIC", source = "github", url = "GfellerLab/EPIC")
check_install("curl")
check_install("MCPcounter", source = "github", url = "ebecht/MCPcounter")
check_install("Decosus", source = "github", url = "BioInforCore-BCI/Decosus")
check_install("remotes")
check_install("immunedeconv", source = "github", url = "omnideconv/immunedeconv")
check_install("GVSA", source = "Bioconductor")
check_install("GSEABase", source = "Bioconductor")

# Survival analysis
check_install("randomForest")
check_install("pamr")
check_install("glmnet")
check_install("caret")
check_install("survival")
check_install("survminer")
check_install("survivalROC")
check_install("pheatmap")
