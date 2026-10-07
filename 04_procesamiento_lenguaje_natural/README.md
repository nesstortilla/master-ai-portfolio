# Módulo 04: Procesamiento del Lenguaje Natural (PLN)

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)](https://www.python.org/)
[![spaCy](https://img.shields.io/badge/spaCy-3.7%2B-09A3D5.svg)](https://spacy.io/)
[![Hugging Face](https://img.shields.io/badge/Hugging%20Face-Transformers-yellow.svg)](https://huggingface.co/)
[![PyTorch](https://img.shields.io/badge/PyTorch-Deep%20Learning-EE4C2C.svg)](https://pytorch.org/)

Este módulo aborda técnicas modernas de lingüística computacional y modelos neuronales para el procesamiento del lenguaje natural. Comprende desde la extracción de características morfosintácticas y análisis de sentimiento/odio en español, hasta el ajuste fino (*fine-tuning*) y benchmark empírico entre arquitecturas neuronales recurrentes clásicas y Transformers basados en atención (*Self-Attention*).

---

## Estructura del Módulo

```text
04_procesamiento_lenguaje_natural/
├── data/
│   └── sample_comentarios.csv                     # Muestra representativa para reproducibilidad local
├── notebooks/
│   ├── 01_deteccion_odio_nlp_features.ipynb       # Extracción lingüística, PoS tagging y detección de odio
│   ├── 02_benchmark_transformers_huggingface.ipynb# Clasificación de texto con Transformers y Hugging Face
│   └── 03_clasificacion_texto_redes_clasicas.ipynb# Arquitecturas neuronales recurrentes (LSTM/BiLSTM)
├── requirements.txt
└── README.md
```

---

## Proyectos Destacados

### 1. Detección de Discurso de Odio mediante Features Lingüísticas
- **Objetivo**: Detectar patrones de toxicidad y discurso de odio en comentarios de redes sociales en idioma español.
- **Técnicas implementadas**:
  - Limpieza y normalización de texto in-memory: filtrado de caracteres especiales, emojis, URLs y corrección de codificación mojibake.
  - Análisis lingüístico profundo con spaCy (`es_core_news_md`): lemmatización, Part-of-Speech (PoS) tagging, detección de entidades nombradas (NER) y dependencias sintácticas.
  - Vectorización híbrida combinando matrices dispersas TF-IDF (n-gramas a nivel de palabra y carácter) con métricas estilométricas y semánticas.

### 2. Benchmark Experimental: Redes Clásicas vs. Transformers
- **Objetivo**: Comparar cuantitativa y cualitativamente el rendimiento de arquitecturas profundas secuenciales clásicas frente a modelos fundacionales basados en Transformer.
- **Modelos evaluados**:
  - **Redes Neuronales Clásicas**: Embeddings densos preentrenados combinados con capas recurrentes bidireccionales (BiLSTM) y capas de convolución temporal (1D-CNN) con Dropout.
  - **Transformers Modernos**: Tokenización sub-palabra (*WordPiece / BPE*), matrices de atención multicabezal (*Multi-Head Self-Attention*), positional encodings y clasificación con cabezal de fine-tuning.
- **Conclusiones del Benchmark**: Los Transformers capturan dependencias contextuales de largo alcance y polisemia de forma drásticamente superior, reduciendo el error en categorías semánticamente ambiguas a expensas de mayor coste computacional y memoria en GPU.

---

## Instalación y Uso

```bash
pip install -r requirements.txt
python -m spacy download es_core_news_md
jupyter lab
```
