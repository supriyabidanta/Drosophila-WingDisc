# 🧬 CMG Data Analysis — Single-Cell Integration, Pathway Enrichment, and Spatial Mapping

This repository contains Jupyter notebooks for analyzing single-cell transcriptomic data from CMG (Cardiac Microvascular Graft) experiments, specifically focusing on iEC (induced Endothelial Cell) vs Control conditions, as well as integrated merged datasets.

---

## 📁 Project Structure

### `CMG-Analysis-Integrating-merged.ipynb`
- Performs full integration and analysis of CMG data across experimental groups.
- Key steps:
  - Cluster-level gene expression summarization.
  - Differential pathway enrichment analysis (e.g., immune, senescence, signaling).
  - Visualization of enriched terms using heatmaps or bar plots.
  - Projection of biological signatures onto spatial transcriptomics maps (via SPOTlight or manual gene sets).

### `CMG-Analysis-Integrating-iEC-Ctrl.ipynb`
- Subset analysis focusing specifically on **iEC vs Control** comparisons.
- Highlights:
  - Targeted pathway analysis to detect phenotypic shifts.
  - Spatial mapping of condition-specific markers or pathway scores.

---

## 🧪 Tools and Libraries Used

| Tool/Library | Purpose |
|:------------:|:--------|
| `scanpy`     | Single-cell RNA-seq analysis framework. |
| `pandas`, `numpy` | Data manipulation. |
| `matplotlib`, `seaborn` | Plotting and visualizations. |
| `gseapy` or `enrichr` | Pathway enrichment analysis (based on observed usage). |
| `SPOTlight`, `cell2location`, or manual signature maps | Spatial transcriptomic projection. |

---

## 🔬 Biological Context

- The CMG model involves engineering or treating cardiac microvascular environments using iECs.
- This project investigates transcriptional changes induced by iECs across conditions and spatial contexts.
- Focus areas:
  - Inflammatory, angiogenic, and regenerative pathways.
  - Cell-type-specific gene expression and spatial localization.

---

## 🌍 Key Visuals Generated

1. **Pathway Enrichment Heatmaps**  
   - Visualize significantly enriched biological pathways (e.g., Toll-like signaling, IL-6 response).

2. **Spatial Projection Maps**  
   - Project key gene sets or signatures onto tissue maps to localize functional zones.

3. **Cluster-level Dotplots / Violin plots** *(Optional if included)*  
   - Show how expression patterns differ between conditions or across cell clusters.

---

## 🧠 How to Use / Run

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/CMG-singlecell-analysis.git
   cd CMG-singlecell-analysis

