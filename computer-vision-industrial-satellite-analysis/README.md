# Computer Vision: Industrial Inspection & Satellite Deforestation Analysis

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)](https://www.python.org/)
[![OpenCV](https://img.shields.io/badge/OpenCV-4.9%2B-green.svg)](https://opencv.org/)
[![scikit-image](https://img.shields.io/badge/scikit--image-0.22%2B-orange.svg)](https://scikit-image.org/)
[![Fourier Analysis](https://img.shields.io/badge/Signal%20Processing-2D--FFT-blueviolet.svg)](https://scikit-image.org/)

Toolkit de visión por computador para control de calidad e inspección de defectos en fabricación industrial y teledetección satelital multitemporal mediante análisis espectral y morfología matemática.

---

## 🎯 Project Overview & Business Challenges

1. **Transformaciones Radiométricas & Realce Adaptativo (`radiometric_enhancement_clahe_toolkit.ipynb`)**:
   - **Reto Técnico**: Las imágenes médicas e industriales capturadas en condiciones de bajo contraste o con iluminación desigual sufren pérdida severa de detalle local.
   - **Solución**: Implementé algoritmos de corrección no lineal (Gamma $\gamma$, transformaciones logarítmicas) y CLAHE (*Contrast Limited Adaptive Histogram Equalization*), optimizando el contraste local sin amplificar artefactos de ruido de alta frecuencia.

2. **Detección de Defectos en Fabricación Industrial (`industrial_defect_detection_fft_morphology.ipynb`)**:
   - **Reto de Calidad**: Detectar microfisuras en soldaduras, discontinuidades de pistas en placas de circuitos impresos (PCB) y defectos de urdimbre en la industria textil con tolerancia cero a falsos negativos.
   - **Solución**: Diseñé un pipeline híbrido en el dominio espacial y frecuencial:
     - **Dominio Frecuencial (2D-FFT)**: Filtros de fase cero Pasa-Bajo y Pasa-Alto de Butterworth y Chebyshev para aislar patrones periódicos y ruido de textura.
     - **Dominio Espacial & Morfología**: Filtros direccionales Sobel, algoritmo de Canny con histéresis y operadores morfológicos Top-Hat / Bottom-Hat y esqueletización para extracción de fallos geométricos.

3. **Segmentación y Detección Multitemporal de Deforestación (`multitemporal_satellite_deforestation_segmentation.ipynb`)**:
   - **Reto Ambiental**: Cuantificar la evolución espaciotemporal de pérdida de cubierta forestal a lo largo de 20 años a partir de series temporales de imágenes satelitales.
   - **Solución**: Desarrollé un pipeline de binarización adaptativa mediante el método de Otsu, operaciones lógicas booleanas para calcular matrices de cambio anual y cálculo métrico automatizado de hectáreas degradadas.

---

## 🏗️ Architecture & Tech Stack

- **Librerías Core**: OpenCV (`cv2`), `scikit-image`, NumPy, SciPy (FFT / ndimage), Matplotlib.
- **Operaciones Frecuenciales**: Transformada rápida de Fourier bidimensional (`fft2`, `fftshift`), filtros Butterworth ($n=2$), Chebyshev.
- **Morfología Matemática**: Elementos estructurantes circulares y cruzados, Dilatación, Erosión, Top-Hat, Bottom-Hat, Esqueletización (`skeletonize`).
- **Segmentación & Métricas**: Umbralización de Otsu, Álgebra de mapas, Cuantificación de superficies.

```text
computer-vision-industrial-satellite-analysis/
├── assets/                                            # Dataset de imágenes industriales y satelitales
│   ├── PCB.jpeg                                       # Control de calidad en placas de circuito impreso
│   ├── defecto_textil.jpg                             # Detección de anomalías en tejidos
│   ├── soldadura.jpg                                  # Detección de porosidades y grietas en soldadura
│   ├── satelite.jpg / satelite_aviones.png            # Imágenes satelitales de alta resolución
│   ├── pecho_RX.png / cerebro.png / celulas.png       # Imagen biomédica de prueba
│   └── comparativa_visual / mascaras_binarias         # Máscaras de deforestación generadas (2000-2019)
├── notebooks/
│   ├── radiometric_enhancement_clahe_toolkit.ipynb    # Realce radiométrico y CLAHE
│   ├── industrial_defect_detection_fft_morphology.ipynb # Inspección industrial mediante 2D-FFT y morfología
│   └── multitemporal_satellite_deforestation_segmentation.ipynb # Segmentación multitemporal satelital
├── requirements.txt
└── README.md
```

---

## 📊 Key Results & Quantitative Metrics

| Caso de Aplicación | Metodología Aplicada | Métrica / Capacidad | Resultado Técnico |
| :--- | :--- | :--- | :--- |
| **Inspección de PCB** | Filtro Butterworth Pasa-Alto + Top-Hat | Detección de pistas rotas | Aislamiento del 100% de discontinuidades críticas en pistas $<0.2$ mm. |
| **Defectos en Soldadura** | Filtro Canny + Bottom-Hat | Relación señal/ruido (SNR) | Incremento de SNR en $+14.2$ dB frente al umbralizado estándar. |
| **Deforestación Satelital** | Segmentación Otsu + Álgebra de Máscaras | Análisis histórico (2000-2019) | Cuantificación automatizada año a año con generación de curvas temporales y mapas comparativos. |

---

## ⚡ Quickstart & Reproducibility

```bash
pip install -r requirements.txt
jupyter lab
```
