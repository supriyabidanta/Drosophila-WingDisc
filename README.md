
# Single-Nucleus RNA-seq Analysis of Drosophila Wing Disc — iEC vs Control
**Polyploidy, Senescence, and Spatial Pathway Enrichment**

This repository contains Jupyter notebooks analyzing single-nucleus RNA-seq data from Drosophila wing imaginal discs.  
The focus is on comparing **induced Endocycling Cells (iECs)** versus **control** cells to uncover senescence-like transcriptional programs and spatial pathway activation.

---

## Project Overview

| Analysis Focus | Description |
|:--------------|:------------|
| Global Analysis | Full integration of merged datasets for pathway exploration across all cells. |
| Condition-Specific | Direct comparison between iEC and control cells for differential pathways and spatial gene expression. |

---

## Notebooks Included

### `CMG-Analysis-Integrating-merged.ipynb`
- **Purpose**: Full dataset integration to explore enriched pathways across all cells.
- **Key Steps**:
  - Load pre-integrated single-cell AnnData object.
  - UMAP visualization by cluster and condition.
  - Marker identification for enriched clusters.
  - Pathway enrichment analysis using GProfiler.
  - Spatial mapping of pathways.

### `CMG-Analysis-Integrating-iEC-Ctrl.ipynb`
- **Purpose**: iEC vs Control specific subset analysis.
- **Key Steps**:
  - Subset AnnData object.
  - UMAP visualization focused on conditions.
  - Differential gene expression and pathway enrichment.
  - Spatial feature projection.

---

## Biological Context

- **Goal**: Investigate whether polyploid iECs exhibit senescence-like transcriptional changes.
- **Hypothesis**: iECs activate innate immune pathways (Toll, JAK-STAT) and stress responses similar to senescent cells.
- **Significance**: Insights into how polyploidy, tissue regeneration, and cellular senescence intersect biologically.

---

## Methods Overview

| Step | Method/Library |
|:-----|:---------------|
| Data Input | Preprocessed `.h5` single-nucleus RNA-seq files |
| Visualization | UMAP, matplotlib, seaborn |
| Clustering | Leiden clustering |
| Marker Identification | `scanpy.rank_genes_groups` (Wilcoxon test) |
| Pathway Enrichment | `gprofiler-official` (GProfiler queries) |
| Spatial Mapping | `squidpy`, `scikit-image` for feature extraction and projection |

---

## Tools and Libraries

- `scanpy`
- `numpy`
- `pandas`
- `seaborn`
- `matplotlib`
- `gprofiler-official`
- `squidpy`
- `scipy`
- `scikit-image`

---

## Requirements

All Python dependencies are listed in `requirements.txt`.  
To install them:

```bash
pip install -r requirements.txt
```

Example content of `requirements.txt`:

```
scanpy
numpy
pandas
seaborn
matplotlib
gprofiler-official
squidpy
scipy
scikit-image
```

---

## Key Outputs

- UMAP plots colored by condition and clusters.
- Pathway enrichment heatmaps and dotplots.
- Spatial maps highlighting immune/stress pathway activation.

---

## How to Reproduce

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/CMG-iEC-Analysis.git
   cd CMG-iEC-Analysis
   ```

2. Install requirements:
   ```bash
   pip install -r requirements.txt
   ```

3. Launch JupyterLab:
   ```bash
   jupyter lab
   ```

4. Open either notebook:
   - Full dataset analysis: `CMG-Analysis-Integrating-merged.ipynb`
   - Focused iEC vs Control analysis: `CMG-Analysis-Integrating-iEC-Ctrl.ipynb`

---

## Author

**Supriya Bidanta**  
Computational Biology • Single-cell Genomics • Aging Research  
[LinkedIn](#) | [GitHub](https://github.com/supriyabidanta)

---
