# Módulo 02: Aprendizaje No Supervisado y Clustering Avanzado

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)](https://www.python.org/)
[![Scikit-Learn](https://img.shields.io/badge/Scikit--Learn-Clustering-orange.svg)](https://scikit-learn.org/)
[![Dimensionality](https://img.shields.io/badge/PCA%20%7C%20t--SNE-Manifold-green.svg)](https://scikit-learn.org/)

Este módulo comprende proyectos prácticos de modelización sobre datos no etiquetados, descubrimiento de estructuras latentes en transacciones de comercio electrónico y reducción de dimensionalidad para análisis semántico.

---

## Proyectos Prácticos

```text
02_aprendizaje_no_supervisado/
├── data/
│   ├── customer.csv                    # Perfiles sociodemográficos y metadatos de clientes
│   ├── transactions_sample.csv         # Registro de transacciones de compra
│   ├── product.csv                     # Catálogo de productos y categorías
│   ├── out.csv                         # Embeddings / representaciones vectoriales para topic modeling
│   ├── temas_label_0.csv               # Segmentos temáticos descubiertos
│   └── temas_label_1.csv               # Segmentos temáticos secundarios
├── notebooks/
│   ├── 01_clustering_ecommerce_kmeans_jerarquico.ipynb  # Segmentación RFM y agrupamiento de clientes
│   └── 02_topic_modeling_reduccion_dimensional.ipynb    # Descubrimiento de tópicos y proyecciones
├── requirements.txt
└── README.md
```

---

## Descripción Técnica de los Proyectos

### 1. Segmentación de Clientes E-Commerce (`01_clustering_ecommerce_kmeans_jerarquico.ipynb`)
- **Problema de Negocio**: Identificación de arquetipos de clientes y segmentación de valor en una plataforma de comercio electrónico a partir de datos transaccionales masivos.
- **Técnicas implementadas**:
  - Ingeniería de variables RFM (Recencia, Frecuencia, Valor Monetario) y métricas de ticket medio.
  - Normalización robusta para mitigar el sesgo provocado por compradores atípicos (*whales*).
  - Determinación empírica del número óptimo de clusters $k$ mediante el método del codo (*Elbow*), índice de Silueta (*Silhouette score*) e índice Davies-Bouldin.
  - Comparativa analítica entre K-Means++ y Clustering Jerárquico Aglomerativo (Ward Linkage con dendrograma).
  - Interpretación de negocio: diferenciación entre clientes VIP, recurrentes de ticket bajo, compradores ocasionales y cuentas inactivas.

### 2. Topic Modeling y Reducción de Dimensionalidad (`02_topic_modeling_reduccion_dimensional.ipynb`)
- **Problema**: Agrupamiento no supervisado y visualización interpretable de documentos de texto en espacios de alta dimensionalidad.
- **Técnicas implementadas**:
  - Extracción de representaciones densas y reducción de dimensionalidad mediante Análisis de Componentes Principales (PCA).
  - Proyecciones manifold no lineales (t-SNE y UMAP) para visualización en 2D conservando la estructura local y global de los clusters.
  - Extracción automática de palabras clave representativas por cada tópico descubierto.

---

## Instalación y Ejecución

```bash
pip install -r requirements.txt
jupyter lab
```
