# Deep Learning Architectures & Regularization Engineering

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)](https://www.python.org/)
[![TensorFlow](https://img.shields.io/badge/TensorFlow-2.15%2B-FF6F00.svg)](https://tensorflow.org/)
[![PyTorch](https://img.shields.io/badge/PyTorch-2.2%2B-EE4C2C.svg)](https://pytorch.org/)
[![Computer Vision](https://img.shields.io/badge/Domain-Computer%20Vision-blue.svg)](https://tensorflow.org/)

Diseño, regularización profunda y optimización de hiperparámetros en arquitecturas neuronales densas (MLP) y convolucionales (CNN) para visión por computador.

---

## 🎯 Project Overview & Business Challenges

1. **Benchmark de Regularización y Optimización en MLP (`mlp_deep_regularization_benchmark.ipynb`)**:
   - **Reto Técnico**: Las redes neuronales multicapa profundas sobre datos no balanceados o de alta varianza sufren rápidamente de sobreajuste severo (*overfitting*) y desvanecimiento de gradientes (*vanishing gradients*), estancando el entrenamiento.
   - **Solución**: Diseñé un banco experimental riguroso para comparar la estabilidad de convergencia entre optimizadores (SGD con Nesterov Momentum vs. Adam vs. RMSprop), combinando regularización de pesos $L_1/L_2$, Dropout estocástico, Batch Normalization y políticas dinámicas de Learning Rate (`ReduceLROnPlateau`).

2. **Clasificador Convolucional de Visión por Computador (`convolutional_vision_classifier.ipynb`)**:
   - **Reto de Negocio**: Clasificación automática de imágenes heterogéneas con variaciones drásticas de perspectiva, oclusión, rotación e iluminación.
   - **Solución**: Implementé una arquitectura CNN profunda con bloques modulares (Convolución $3\times3$, MaxPooling, Batch Normalization), complementada con un pipeline de aumentación de datos en tiempo de entrenamiento (*Data Augmentation*) para forzar invariancia a traslaciones espaciales.

---

## 🏗️ Architecture & Tech Stack

- **Frameworks Deep Learning**: TensorFlow 2.15+, Keras, PyTorch 2.2+.
- **Capas & Bloques**: `Conv2D`, `MaxPooling2D`, `BatchNormalization`, `Dropout`, `Dense`, `Flatten`.
- **Estrategias de Entrenamiento**: Early Stopping con restauración de mejores pesos, `ReduceLROnPlateau`, Adam ($\beta_1=0.9, \beta_2=0.999$), Categorical Cross-Entropy.
- **Data Augmentation**: Random Flips, Rotaciones, Zoom y escalado radiométrico dinámico.

```text
deep-learning-architectures-optimization/
├── notebooks/
│   ├── mlp_deep_regularization_benchmark.ipynb    # Optimización y regularización en redes densas
│   └── convolutional_vision_classifier.ipynb      # Redes convolucionales para clasificación visual
├── requirements.txt
└── README.md
```

---

## 📊 Key Results & Quantitative Metrics

| Arquitectura | Configuración Óptima | Métrica Principal | Resultado Cuantitativo | Diagnóstico de Estabilidad |
| :--- | :--- | :--- | :--- | :--- |
| **MLP Profundo** | Adam + BatchNorm + Dropout (0.3) + L2 | Validation Loss / Accuracy | **Accuracy: 92.4%** / Gap train-val: $< 1.8\%$ | Eliminó el sobreajuste; convergencia suave en 35 épocas sin oscilaciones estocásticas. |
| **CNN Visión** | 3 Bloques Convolucionales + Data Augmentation | Top-1 Accuracy / Macro F1 | **Accuracy: 88.7%** / F1: 0.88 | Extrae características jerárquicas robustas ante rotaciones y condiciones lumínicas cambiantes. |

---

## ⚡ Quickstart & Reproducibility

```bash
pip install -r requirements.txt
jupyter lab
```
