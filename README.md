# Máster Universitario en Inteligencia Artificial — Portfolio Profesional

[![Python 3.10+](https://img.shields.io/badge/Python-3.10%2B-blue.svg?logo=python&logoColor=white)](https://www.python.org/)
[![PyTorch](https://img.shields.io/badge/PyTorch-2.2%2B-EE4C2C.svg?logo=pytorch&logoColor=white)](https://pytorch.org/)
[![TensorFlow](https://img.shields.io/badge/TensorFlow-2.15%2B-FF6F00.svg?logo=tensorflow&logoColor=white)](https://tensorflow.org/)
[![Scikit-Learn](https://img.shields.io/badge/Scikit--Learn-1.3%2B-F7931E.svg?logo=scikit-learn&logoColor=white)](https://scikit-learn.org/)
[![Hugging Face](https://img.shields.io/badge/Hugging%20Face-Transformers-FFD21E.svg?logo=huggingface&logoColor=black)](https://huggingface.co/)
[![OpenCV](https://img.shields.io/badge/OpenCV-4.9%2B-5C3EE8.svg?logo=opencv&logoColor=white)](https://opencv.org/)
[![FAISS](https://img.shields.io/badge/FAISS-Vector%20Search-0467DF.svg)](https://github.com/facebookresearch/faiss)
[![Azure OpenAI](https://img.shields.io/badge/Azure-OpenAI%20Service-0078D4.svg?logo=microsoftazure&logoColor=white)](https://azure.microsoft.com/)

Bienvenido al repositorio central de proyectos y código aplicado correspondiente al **Máster Universitario en Inteligencia Artificial**. Este portfolio reúne el trabajo desarrollado a lo largo de las distintas disciplinas nucleares de la IA, estructurado bajo estándares de arquitectura limpia, reproducibilidad científica y preparación para entornos productivos.

---

## 🗺️ Mapa de Asignaturas y Módulos Técnicos

| Módulo | Dominio Tecnológico | Proyectos & Algoritmos Clave | Stack Principal |
| :--- | :--- | :--- | :--- |
| **[01. Aprendizaje Supervisado](./01_machine_learning_supervisado/)** | Machine Learning Tabular & Regresión/Clasificación | Calibración de sensores ambientales (`AirQuality`), Clasificación multiclase en alta dimensionalidad (`CoverType`), Pipelines de inferencia `scikit-learn`. | Scikit-Learn, XGBoost, Pandas, NumPy |
| **[02. Aprendizaje No Supervisado](./02_aprendizaje_no_supervisado/)** | Clustering & Reducción de Dimensionalidad | Segmentación de clientes E-Commerce (K-Means++, Jerárquico Ward, Silhouette) y Topic Modeling con proyecciones latentes (PCA, t-SNE). | Scikit-Learn, SciPy, Pandas, NumPy |
| **[03. Deep Learning & Redes Neuronales](./03_deep_learning_redes_neuronales/)** | Redes Profundas & Visión por Computador | Perceptrón Multicapa (MLP) con regularización y optimización (Dropout, BatchNorm, L1/L2), y Redes Neuronales Convolucionales (CNN) para imágenes. | TensorFlow, Keras, Matplotlib, Scikit-Learn |
| **[04. Procesamiento del Lenguaje Natural](./04_procesamiento_lenguaje_natural/)** | NLP, Análisis Lingüístico & Transformers | Detección de discurso de odio con spaCy y TF-IDF, Benchmark empírico entre Redes Clásicas (BiLSTM) y Transformers basados en Atención (*BERT/RoBERTa*). | spaCy, Hugging Face Transformers, PyTorch |
| **[05. Visión Artificial](./05_vision_artificial/)** | Visión por Computador & Procesamiento 2D | Transformadas radiométricas (CLAHE, Gamma), Filtrado espacial/frecuencial 2D-FFT (Butterworth, Chebyshev), Morfología (Top-Hat/Bottom-Hat) y Teledetección satelital de deforestación. | OpenCV, scikit-image, NumPy, Matplotlib |
| **[06. Modelos Generativos y LLMs](./06_modelos_generativos_y_llms/)** | GenAI, Búsqueda Vectorial & Agentes | Motor de Búsqueda Semántica Vectorial con FAISS y Sentence Transformers (`all-MiniLM-L6-v2`), Orquestación gobernada de LLMs empresariales con Azure OpenAI SDK (`gpt-4.1-mini`) y agentes autónomos. | Azure OpenAI SDK, FAISS, Sentence-Transformers, python-dotenv |
| **[07. Razonamiento y Planificación](./07_razonamiento_y_planificacion/)** | IA Simbólica & Planificación Clásica | Búsqueda heurística informada en grafos de estados (A*, Manhattan, consistencia de heurísticas) y Planificación espacial temporal en PDDL con planificador heurístico BFWS (Rover Marciano). | PDDL 2.1, simpleai, BFWS |

---

## 📁 Estructura del Repositorio

```text
master_ai_portfolio/
├── .gitignore                                 # Filtro estricto: cero credenciales, binarios pesados o basura OS
├── .env.example                               # Plantilla limpia de variables de entorno para APIs de LLMs
├── README.md                                  # Landing page y visión arquitectónica general
│
├── 01_machine_learning_supervisado/           # Módulo 01: Machine Learning Clásico
│   ├── data/                                  # Datasets tabulares limpios y muestras representativas
│   ├── notebooks/                             # Cuadernos Jupyter reproducibles
│   ├── requirements.txt                       # Dependencias fijadas del módulo
│   └── README.md                              # Memoria técnica del módulo
│
├── 02_aprendizaje_no_supervisado/             # Módulo 02: Clustering, Reducción Dim. & RL
│   ├── data/
│   ├── notebooks/
│   ├── requirements.txt
│   └── README.md
│
├── 03_deep_learning_redes_neuronales/         # Módulo 03: Deep Learning (TensorFlow & PyTorch)
│   ├── notebooks/
│   ├── requirements.txt
│   └── README.md
│
├── 04_procesamiento_lenguaje_natural/         # Módulo 04: PLN y Modelos Fundacionales
│   ├── data/
│   ├── notebooks/
│   ├── requirements.txt
│   └── README.md
│
├── 05_vision_artificial/                      # Módulo 05: Visión Artificial e Inspección Digital
│   ├── assets/                                # Imágenes de test industrial y teledetección
│   ├── notebooks/
│   ├── requirements.txt
│   └── README.md
│
├── 06_modelos_generativos_y_llms/             # Módulo 06: GenAI, RAG y Azure OpenAI
│   ├── agents/                                # Especificación formal JSON de agentes inteligentes
│   ├── notebooks/
│   ├── requirements.txt
│   └── README.md
│
└── 07_razonamiento_y_planificacion/           # Módulo 07: Búsqueda Heurística y PDDL
    ├── pddl/                                  # Dominios y problemas PDDL formales
    ├── notebooks/
    ├── requirements.txt
    └── README.md
```

---

## 🔒 Buenas Prácticas de Seguridad y Portabilidad

Este portfolio ha sido auditado y saneado con las siguientes directivas de grado productivo:

1. **Cero Credenciales Expuestas (Zero-Trust):** Ningún archivo de configuración contiene claves API o tokens de producción. Las llamadas a APIs externas cargan credenciales dinámicamente mediante variables de entorno aisladas (`.env`).
2. **Rutas Relativas Portables:** Todas las referencias a datasets, imágenes y recursos han sido normalizadas para funcionar de manera independiente al sistema operativo anfitrión (cero rutas locales absolutas).
3. **Preservación de Resultados Experimentales:** Todos los cuadernos Jupyter conservan sus celdas de ejecución previas (gráficas, matrices de confusión, trazas de entrenamiento), permitiendo auditar los resultados sin requerir re-entrenamiento computacional intensivo.
4. **Git LFS / Datasets Ligeros:** Los datasets con tamaños superiores al límite de GitHub (>50-100 MB) cuentan con muestras representativas reproducibles y documentación para su descarga completa.

---

## 🚀 Guía Rápida de Inicio

### 1. Clonar el Repositorio
```bash
git clone https://github.com/tu-usuario/master-ai-portfolio.git
cd master-ai-portfolio
```

### 2. Configurar el Entorno
Cada módulo cuenta con su propio archivo `requirements.txt` independiente para evitar conflictos entre dependencias tensoriales. Para trabajar en un módulo concreto:

```bash
# Ejemplo: Módulo de Modelos Generativos
cd 06_modelos_generativos_y_llms
python -m venv .venv
source .venv/bin/activate  # En Windows: .venv\Scripts\activate
pip install -r requirements.txt

# Iniciar el entorno interactivo
jupyter lab
```

---

## 👨‍💻 Autor y Contacto

- **Autor:** Néstor León
- **Programa:** Máster Universitario en Inteligencia Artificial
- **Enfoque Profesional:** Inteligencia Artificial Aplicada, Modelos Fundacionales, Machine Learning Engineering y Sistemas Autónomos.
