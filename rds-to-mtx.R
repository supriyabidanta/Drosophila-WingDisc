# Load required libraries
library(Matrix)
library(Seurat)         # Or library(SingleCellExperiment) if using that format
library(dplyr)

# Define input and output paths
input_rds <- "input_file.rds" # change it to your input file path
output_dir <- "output_folder" # chnage it to your desired output path

# Create output folder if it doesn't exist
if (!dir.exists(output_dir)) {
  dir.create(output_dir, recursive = TRUE)
}

# Load the RDS file
seurat_obj <- readRDS(input_rds)

# Extract raw count matrix (change 'RNA' if using a different assay)
counts <- GetAssayData(seurat_obj, assay = "RNA", slot = "counts") #assay(sce, "counts") (if using SingleCellExperiment)

# Ensure counts is a sparse matrix
if (!inherits(counts, "dgCMatrix")) {
  counts <- as(counts, "dgCMatrix")
}

# Write matrix.mtx.gz
matrix_file <- gzfile(file.path(output_dir, "matrix.mtx.gz"), "wt")
writeMM(counts, matrix_file)
close(matrix_file)

# Write genes.tsv.gz (feature metadata)
genes <- data.frame(
  gene_id = rownames(counts),
  gene_name = rownames(counts),  # You can modify this if actual gene names differ
  stringsAsFactors = FALSE
)
write.table(genes, gzfile(file.path(output_dir, "genes.tsv.gz")),
            sep = "\t", quote = FALSE, row.names = FALSE, col.names = FALSE)

# Write barcodes.tsv.gz
write.table(colnames(counts), gzfile(file.path(output_dir, "barcodes.tsv.gz")),
            sep = "\t", quote = FALSE, row.names = FALSE, col.names = FALSE)

cat("Conversion complete. Files saved to:", output_dir, "\n")
