# 🧬 Drosophila Wing Disc Single-nuclie Transcriptomic Analysis
### Single-nuclear RNA-sequencing of Polyploid Senescent Cells in Drosophila

This repository contains Jupyter notebooks used for analyzing single-nucleus RNA-sequencing (snRNA-seq) data from Drosophila wing imaginal discs, comparing induced Endocycling Cells (iECs) to controls.  
The aim is to uncover transcriptional programs linked to senescence, tissue regeneration, and cellular stress responses.

---

## 🧪 Biological Question

- **Background**:  
  Polyploidy, the state of having more than two sets of chromosomes, supports normal tissue growth and regeneration (Gjelsvik et al., 2018).
  
- **Objective**:  
  To determine how polyploid iECs in Drosophila wing discs adopt a **senescence-like** transcriptional program, focusing on pathways such as:
  - Wound healing
  - Innate immune activation (Toll pathway)
  - FGFR signaling
  - JAK-STAT pathway
  - MAPK/EGFR pathway
  - Cellular responses to stress

- **Significance**:  
  Understanding iEC behavior may illuminate how polyploid cells contribute to tumorigenesis, regeneration, and stress resistance.

---

## 📁 Project Structure

### `CMG-Analysis-Integrating-merged.ipynb`
- **Goal**:  
  Integrate datasets across experimental groups (iEC + control) for a global pathway enrichment analysis.
- **Key Analyses**:
  - Gene expression harmonization (scVI)
  - UMAP visualization and clustering
  - Pathway enrichment (e.g., Toll pathway, JAK-STAT)
  - Spatial projection of gene signatures

### `CMG-Analysis-Integrating-iEC-Ctrl.ipynb`
- **Goal**:  
  Focused comparison between **iEC** and **Control** conditions.
- **Key Analyses**:
  - Identification of differentially expressed genes.
  - Spatial mapping of selected stress- and wounding-related genes.

---

## 🔬 Methodological Highlights

| Step | Tools/Approach |
|:-----|:--------------|
| Quality Control | `scanpy` |
| Harmonization | `scVI` (scArches framework) |
| Clustering & Visualization | UMAP, Leiden clustering |
| Pathway Enrichment | `gseapy` or Enrichr queries |
| Spatial Mapping | Gene set projections onto wing disc regions |

---

## 🌟 Key Results

- iECs exhibit:
  - Upregulation of wound healing, innate immune response, and stress pathways.
  - Key senescence markers like `upd1`, `upd2`, `Ilp8`, and `Mmp1` were highly expressed.
- Spatial maps reveal regional activation of these stress pathways in specific wing disc compartments.

> **Biological Insight**:  
  iECs display transcriptional hallmarks of senescence and regeneration, suggesting a dual role in tissue maintenance and potential tumorigenic transformation.

---

## 🧠 How to Use This Repository

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/CMG-singlecell-analysis.git
   cd CMG-singlecell-analysis
