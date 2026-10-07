# NLP Toxic Content Detection & Transformers Benchmark

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)](https://www.python.org/)
[![spaCy](https://img.shields.io/badge/spaCy-3.7%2B-09A3D5.svg)](https://spacy.io/)
[![Hugging Face](https://img.shields.io/badge/Hugging%20Face-Transformers-yellow.svg)](https://huggingface.co/)
[![PyTorch](https://img.shields.io/badge/PyTorch-2.2%2B-EE4C2C.svg)](https://pytorch.org/)

Pipeline de moderación automatizada de contenidos tóxicos en español y benchmark experimental entre Redes Neuronales Recurrentes clásicas (BiLSTM) y modelos fundacionales basados en Transformer.

---

## 🎯 Project Overview & Business Challenges

1. **Extracción Lingüística y Clasificación de Toxicidad (`hate_speech_linguistic_feature_extractor.ipynb`)**:
   - **Reto de Negocio**: La moderación manual en plataformas de redes sociales no es escalable ante millones de comentarios diarios. El lenguaje tóxico o de odio en español presenta alta ambigüedad léxica, sarcasmo, jerga informal y corrupción de caracteres.
   - **Solución**: Diseñé un pipeline de preprocesamiento *in-memory* que elimina moji-bake y ruido sin latencia de disco. Extraje características morfosintácticas mediante spaCy (`es_core_news_md`), incluyendo PoS tagging, análisis de dependencias sintácticas y vectorización híbrida TF-IDF (n-gramas de palabras y caracteres).

2. **Benchmark Comparativo: BiLSTM vs. Transformers (`transformer_finetuning_evaluation.ipynb` & `bilstm_text_classification_baseline.ipynb`)**:
   - **Reto de Ingeniería**: Evaluar la relación coste-beneficio computacional y precisión semántica entre redes recurrentes bidireccionales y modelos Transformer basados en auto-atención (*Self-Attention*) para clasificación de texto multiclase.
   - **Solución**: Implementé un entorno comparativo controlando particiones de datos idénticas: entrené una red recurrente BiLSTM con embeddings densos frente al ajuste fino (*fine-tuning*) de arquitecturas tipo BERT/RoBERTa de Hugging Face.

---

## 🏗️ Architecture & Tech Stack

- **NLP Core & Procesamiento**: spaCy 3.7+ (`es_core_news_md`), NLTK, Regular Expressions compiladas.
- **Modelos & Frameworks**: Hugging Face `transformers`, `datasets`, PyTorch 2.2+, Scikit-Learn.
- **Representación Vectorial**: WordPiece Tokenization, TF-IDF n-grams (1-3), Dense Word Embeddings, Multi-Head Self-Attention.
- **Métricas de Evaluación**: F1-Score Macro, Precision-Recall AUC, Matriz de Confusión normalizada.

```text
nlp-toxic-content-transformers-benchmark/
├── data/
│   └── sample_comentarios.csv                     # Muestra representativa limpia para pruebas locales
├── notebooks/
│   ├── hate_speech_linguistic_feature_extractor.ipynb # Extracción lingüística y detección de odio
│   ├── transformer_finetuning_evaluation.ipynb        # Fine-tuning y evaluación de Transformers
│   └── bilstm_text_classification_baseline.ipynb      # Red recurrente BiLSTM como baseline
├── requirements.txt
└── README.md
```

---

## 📊 Key Results & Quantitative Metrics

| Arquitectura Evaluada | Representación | Inferencia Latencia (CPU) | Macro F1-Score | Conclusión de Ingeniería |
| :--- | :--- | :--- | :--- | :--- |
| **Baseline TF-IDF + Classifier** | N-gramas léxicos | **$< 1$ ms / muestra** | $F_1 = 0.79$ | Extremadamente veloz; vulnerable a variaciones léxicas y sinonimia. |
| **BiLSTM Bidireccional** | Embeddings densos | $\sim 8$ ms / muestra | $F_1 = 0.83$ | Modela dependencias de orden secuencial; pierde contexto a largo plazo. |
| **Transformer (Attention)** | BPE + Multi-Head Attention | $\sim 28$ ms / muestra | **$F_1 = 0.91$** | **Rendimiento superior**: Desambigua ironía y dependencias cruzadas con precisión óptima. |

---

## ⚡ Quickstart & Reproducibility

```bash
pip install -r requirements.txt
python -m spacy download es_core_news_md
jupyter lab
```
