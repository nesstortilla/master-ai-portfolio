# Módulo 05: Visión Artificial y Procesamiento Digital de Imágenes

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)](https://www.python.org/)
[![OpenCV](https://img.shields.io/badge/OpenCV-4.9%2B-green.svg)](https://opencv.org/)
[![scikit-image](https://img.shields.io/badge/scikit--image-0.22%2B-orange.svg)](https://scikit-image.org/)

Este módulo implementa algoritmos fundamentales y avanzados de procesamiento digital de señales bidimensionales y visión por computador. Cubre desde realce en el dominio espacial y frecuencial, transformadas de Fourier y morfología matemática, hasta segmentación semántica y análisis multitemporal de deforestación sobre imágenes satelitales.

---

## Estructura del Módulo

```text
05_vision_artificial/
├── assets/                                            # Dataset de imágenes de prueba e inspección
│   ├── PCB.jpeg                                       # Circuito impreso para control de calidad industrial
│   ├── defecto_textil.jpg                             # Detección de anomalías en tejidos
│   ├── soldadura.jpg                                  # Análisis de juntas y porosidad en soldadura
│   ├── satelite.jpg / satelite_aviones.png            # Teledetección y sensores orbitales
│   ├── pecho_RX.png / cerebro.png / celulas.png       # Imagen médica y biológica
│   └── comparativa_visual / mascaras_binarias         # Resultados de segmentación multitemporal
├── notebooks/
│   ├── 01_fundamentos_transformaciones_imagen.ipynb   # Espacios de color, transformaciones radiométricas y ecualización
│   ├── 02_filtrado_espacial_frecuencial_morfologia.ipynb # Filtros pasa-bajo/alto, Butterworth, Chebyshev, Top-Hat
│   └── 03_segmentacion_deteccion_cambio_satelital.ipynb  # Detección de deforestación y máscaras binarias
├── requirements.txt
└── README.md
```

---

## Proyectos Destacados

### 1. Fundamentos y Transformaciones Radiométricas
- **Objetivo**: Manipulación precisa de intensidades de píxel y análisis espectral.
- **Técnicas implementadas**:
  - Conversión de espacios de color (RGB, Grises, HSV, LAB).
  - Transformaciones puntuales: corrección Gamma ($\gamma$), transformaciones logarítmicas y CLAHE (Contrast Limited Adaptive Histogram Equalization).

### 2. Filtrado Espacial, Frecuencial y Morfología Matemática (Inspección Industrial)
- **Objetivo**: Detección de fallos en procesos de fabricación de alta precisión (microgrietas en soldadura, pistas abiertas en PCBs, defectos de urdimbre textil).
- **Técnicas implementadas**:
  - **Dominio Espacial**: Gradientes direccionales Sobel, Laplaciano y algoritmo de Canny con histéresis óptima.
  - **Dominio Frecuencial (2D-FFT)**: Transformada rápida de Fourier bidimensional, diseño de filtros de fase cero Pasa-Bajo y Pasa-Alto:
    - Filtros Gaussianos.
    - Filtros de Butterworth (atenuación progresiva según el orden $n$).
    - Filtros de Chebyshev (control de rizado en banda de paso/rechazo).
  - **Morfología Matemática**: Operadores de Apertura, Cierre, Top-Hat (extracción de picos de brillo), Bottom-Hat (extracción de valles oscuros) y esqueletización topológica.

### 3. Teledetección y Análisis Multitemporal de Deforestación
- **Objetivo**: Cuantificación de la pérdida de masa forestal a partir de secuencias de imágenes satelitales multiespectrales.
- **Técnicas implementadas**:
  - Índices de vegetación y umbralización adaptativa (método de Otsu).
  - Operaciones booleanas y álgebra de mapas para computar máscaras de cambio temporal.
  - Estimación métrica de superficie deforestada y generación de gráficos temporales de evolución.

---

## Instalación y Uso

```bash
pip install -r requirements.txt
jupyter lab
```
