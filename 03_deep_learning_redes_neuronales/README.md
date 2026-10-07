# Módulo 03: Redes Neuronales y Aprendizaje Profundo

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)](https://www.python.org/)
[![TensorFlow](https://img.shields.io/badge/TensorFlow-2.15%2B-FF6F00.svg)](https://tensorflow.org/)
[![PyTorch](https://img.shields.io/badge/PyTorch-2.2%2B-EE4C2C.svg)](https://pytorch.org/)

Este módulo reúne los entregables prácticos desarrollados en Deep Learning, abordando el diseño, regularización, optimización y evaluación de redes neuronales artificiales profundas tanto para datos tabulares complejos como para visión por computador.

---

## Proyectos Prácticos

```text
03_deep_learning_redes_neuronales/
├── notebooks/
│   ├── 01_mlp_optimizacion_regularizacion.ipynb  # Perceptrón Multicapa, regularización y tuning
│   └── 02_cnn_clasificacion_imagenes.ipynb       # Redes Neuronales Convolucionales para Visión
├── requirements.txt
└── README.md
```

---

## Descripción Técnica de los Proyectos

### 1. Perceptrón Multicapa (MLP) y Regularización Profunda (`01_mlp_optimizacion_regularizacion.ipynb`)
- **Objetivo**: Arquitectura neuronal densa optimizada resolviendo problemas de sobreajuste (*overfitting*) y dinámicas complejas de entrenamiento.
- **Técnicas implementadas**:
  - Comparativa sistemática de algoritmos de optimización: SGD con momentum vs. Adam vs. RMSprop.
  - Mecanismos de regularización: penalización L1/L2 (*weight decay*), capas de Dropout estocástico y normalización por lotes (*Batch Normalization*).
  - Políticas adaptativas de tasa de aprendizaje: `ReduceLROnPlateau`, decaimiento exponencial y parada temprana (*EarlyStopping*).
  - Diagnóstico visual de curvas de convergencia (Loss / Accuracy en particiones train vs. validation).

### 2. Redes Convolucionales para Clasificación de Imágenes (`02_cnn_clasificacion_imagenes.ipynb`)
- **Objetivo**: Clasificación de imágenes mediante extracción jerárquica de patrones espaciales y texturas.
- **Técnicas implementadas**:
  - Bloques convolucionales con filtros $3\times3$, funciones de activación ReLU y submuestreo espacial mediante MaxPooling.
  - Pipeline de Data Augmentation en tiempo de inferencia y entrenamiento (rotaciones, flips horizontales, zoom) para enriquecer la invariancia espacial del modelo.
  - Aplanado de mapas de características y conexión a capas densas de clasificación con Softmax multiclase.
  - Análisis detallado de matrices de confusión y métricas por categoría visual.

---

## Instalación y Ejecución

```bash
pip install -r requirements.txt
jupyter lab
```
