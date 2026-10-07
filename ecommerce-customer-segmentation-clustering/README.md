# E-Commerce Customer Segmentation & Latent Topic Engine

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)](https://www.python.org/)
[![Scikit-Learn](https://img.shields.io/badge/Scikit--Learn-Clustering-orange.svg)](https://scikit-learn.org/)
[![Manifold Learning](https://img.shields.io/badge/t--SNE%20%7C%20PCA-Dimensionality%20Reduction-green.svg)](https://scikit-learn.org/)
[![RFM Architecture](https://img.shields.io/badge/Domain-Customer%20Intelligence-blueviolet.svg)](https://en.wikipedia.org/wiki/RFM_(market_research))

Motor no supervisado de segmentación conductual de clientes mediante ingeniería RFM y modelado de tópicos latentes con proyecciones manifold en alta dimensionalidad.

---

## 🎯 Project Overview & Business Challenges

1. **Segmentación RFM en E-Commerce (`ecommerce_rfm_customer_segmentation.ipynb`)**:
   - **Reto de Negocio**: En plataformas de comercio electrónico con más de 100.000 clientes, el marketing masivo indiferenciado genera tasas de conversión bajas y alto abandono. El objetivo fue descubrir arquetipos de comportamiento de compra accionables a partir de millones de transacciones no etiquetadas.
   - **Solución**: Diseñé un pipeline de ingeniería de variables RFM (Recency, Frequency, Monetary Value) complementado con métricas de basket size. Apliqué normalización robusta y evalué K-Means++ frente a Clustering Jerárquico Aglomerativo (Ward).

2. **Descubrimiento de Tópicos Latentes & Manifold (`latent_topic_modeling_manifold.ipynb`)**:
   - **Reto Técnico**: Categorizar automáticamente grandes volúmenes de documentos no supervisados y visualizar su estructura semántica en 2D/3D sin pérdida de coherencia de clusters.
   - **Solución**: Implementé reducción de dimensionalidad combinada: PCA para descorrelación inicial de ruido y t-SNE / UMAP para preservación de vecindades no lineales locales.

---

## 🏗️ Architecture & Tech Stack

- **Lenguaje & Core**: Python 3.10+, Pandas, NumPy, SciPy.
- **Algoritmos de Agrupamiento**: K-Means++ con inicialización probabilística, Agglomerative Hierarchical Clustering (criterio Ward y corte de dendrograma).
- **Reducción de Dimensionalidad**: PCA (Principal Component Analysis), t-SNE (t-Distributed Stochastic Neighbor Embedding).
- **Validación de Clusters**: Silhouette Coefficient, Davies-Bouldin Index, Elbow Method con inercia intracluster.

```text
ecommerce-customer-segmentation-clustering/
├── data/
│   ├── customer.csv                    # Metadatos sociodemográficos de clientes
│   ├── transactions_sample.csv         # Registro transaccional limpio para análisis
│   ├── product.csv                     # Catálogo de referencias y categorías
│   ├── out.csv                         # Embeddings vectoriales para topic modeling
│   ├── temas_label_0.csv               # Segmentos temáticos primarios
│   └── temas_label_1.csv               # Segmentos temáticos secundarios
├── notebooks/
│   ├── ecommerce_rfm_customer_segmentation.ipynb  # Pipeline RFM y clustering de clientes
│   └── latent_topic_modeling_manifold.ipynb       # Modelado de tópicos y proyecciones manifold
├── requirements.txt
└── README.md
```

---

## 📊 Key Results & Quantitative Metrics

| Sistema | Algoritmo Seleccionado | Métrica de Validación | Resultado Cuantitativo | Insights de Negocio |
| :--- | :--- | :--- | :--- | :--- |
| **Segmentación de Clientes** | K-Means++ ($k=4$) | Silhouette Score / Davies-Bouldin | **Silhouette: 0.61** / DB: 0.74 | Identificó con precisión 4 clusters: *VIP Clientes* (alto gasto recurrente), *Compradores Frecuentes de Ticket Medio*, *Nuevos/Ocasionales* y *Cuentas en Riesgo de Churn*. |
| **Topic Modeling** | PCA (50 comps) + t-SNE | Varianza explicada acumulada | **84.3% de varianza explicada** | Separación nítida de clústeres temáticos sin solapamiento destructivo en el espacio latente 2D. |

---

## ⚡ Quickstart & Reproducibility

```bash
pip install -r requirements.txt
jupyter lab
```
