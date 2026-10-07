# AI & Software Engineering Portfolio

[![Python 3.10+](https://img.shields.io/badge/Python-3.10%2B-blue.svg?logo=python&logoColor=white)](https://www.python.org/)
[![PyTorch](https://img.shields.io/badge/PyTorch-2.2%2B-EE4C2C.svg?logo=pytorch&logoColor=white)](https://pytorch.org/)
[![TensorFlow](https://img.shields.io/badge/TensorFlow-2.15%2B-FF6F00.svg?logo=tensorflow&logoColor=white)](https://tensorflow.org/)
[![Scikit-Learn](https://img.shields.io/badge/Scikit--Learn-1.3%2B-F7931E.svg?logo=scikit-learn&logoColor=white)](https://scikit-learn.org/)
[![Hugging Face](https://img.shields.io/badge/Hugging%20Face-Transformers-FFD21E.svg?logo=huggingface&logoColor=black)](https://huggingface.co/)
[![OpenCV](https://img.shields.io/badge/OpenCV-4.9%2B-5C3EE8.svg?logo=opencv&logoColor=white)](https://opencv.org/)
[![FAISS](https://img.shields.io/badge/FAISS-Vector%20Search-0467DF.svg)](https://github.com/facebookresearch/faiss)
[![Azure OpenAI](https://img.shields.io/badge/Azure-OpenAI%20Service-0078D4.svg?logo=microsoftazure&logoColor=white)](https://azure.microsoft.com/)
[![PDDL](https://img.shields.io/badge/Planning-PDDL%202.1-blueviolet.svg)](https://planning.wiki/)

Colección de sistemas de ingeniería de software e inteligencia artificial orientados a producción. Los proyectos abarcan desde pipelines predictivos tabulares y visión artificial industrial hasta recuperación semántica vectorial para RAG empresarial y planificación autónoma en robótica espacial.

---

## 🚀 Engineering Showcase & Project Index

| Solución / Proyecto | Dominio Técnico | Reto de Negocio & Algoritmos Clave | Métricas de Rendimiento | Stack Tecnológico |
| :--- | :--- | :--- | :--- | :--- |
| **[Tabular ML & Predictive Systems](./tabular-ml-predictive-systems/)** | Machine Learning Tabular & Sensores IoT | Calibración virtual de sensores químicos de calidad de aire y clasificación multiclase en alta dimensionalidad (54 variables). | **$R^2 = 0.92$** (error reducido 64%) / **F1: 0.88** (XGBoost) | Scikit-Learn, XGBoost, Pandas, NumPy |
| **[E-Commerce Customer Segmentation](./ecommerce-customer-segmentation-clustering/)** | Clustering Conductual & Topic Modeling | Segmentación transaccional RFM de clientes y modelado de tópicos latentes con reducciones no lineales. | **Silhouette: 0.61** / **84.3% varianza explicada** (t-SNE/PCA) | Scikit-Learn, SciPy, Pandas |
| **[Deep Learning Architectures](./deep-learning-architectures-optimization/)** | Redes Neuronales Profundas & Regularización | Diseño de perceptrones multicapa (MLP) regularizados (BatchNorm, Dropout) y clasificadores convolucionales (CNN) para visión. | **Accuracy: 92.4%** (MLP) / **Accuracy: 88.7%** (CNN con Augmentation) | TensorFlow, Keras, PyTorch |
| **[NLP Toxic Content & Transformers](./nlp-toxic-content-transformers-benchmark/)** | PLN & Modelos Fundacionales | Moderación automatizada de contenidos en español y benchmark empírico entre Redes Recurrentes (BiLSTM) y Transformers (BERT/RoBERTa). | **F1: 0.91** (Transformers) vs. F1: 0.83 (BiLSTM) | spaCy, Hugging Face, PyTorch |
| **[Computer Vision Industrial & Satellite](./computer-vision-industrial-satellite-analysis/)** | Visión por Computador & Teledetección | Control de calidad en fabricación (PCB, soldaduras) mediante 2D-FFT/Morfología y cuantificación temporal de deforestación satelital. | **100% defectos aislados** / **$+14.2$ dB SNR** / Otsu multitemporal | OpenCV, scikit-image, NumPy, Matplotlib |
| **[Enterprise RAG & Azure OpenAI Engine](./enterprise-rag-azure-openai-engine/)** | GenAI, Búsqueda Vectorial & LLMs | Motor de búsqueda semántica de latencia sub-milisegundo con FAISS, orquestación corporativa segura de LLMs en Azure y agentes autónomos. | **$< 0.4$ ms latencia Top-1** (FAISS) / Tokens controlados en Azure | Azure OpenAI SDK, FAISS, Sentence-Transformers |
| **[Autonomous Mars Rover Planner](./autonomous-mars-rover-pddl-planner/)** | IA Simbólica & Robótica Autónoma | Planificación de misiones espaciales en PDDL 2.1 con gestión de energía discreta (`b0`-`b4`) y optimización de rutas (A* con heurísticas consistentes). | **93 nodos gen. / 42 exp.** (BFWS) / **$0.00027$ s cómputo** | PDDL 2.1, BFWS, simpleai |

---

## 🏗️ Repository Architecture

```text
master_ai_portfolio/
├── .gitignore                                         # Reglas estrictas: exclusión de .env, modelos >50MB y raw data
├── .env.example                                       # Plantilla segura de variables de entorno para APIs
├── README.md                                          # Showcase principal de ingeniería y proyectos
│
├── tabular-ml-predictive-systems/                     # Pipelines de regresión y clasificación multiclase
│   ├── data/                                          # Datasets tabulares limpios y muestras
│   ├── notebooks/                                     # air_quality_sensor_calibration, forest_cover_multiclass...
│   ├── requirements.txt
│   └── README.md
│
├── ecommerce-customer-segmentation-clustering/        # Segmentación RFM y manifold latente
│   ├── data/                                          # Datos transaccionales y catálogos
│   ├── notebooks/                                     # ecommerce_rfm_customer_segmentation, latent_topic_modeling...
│   ├── requirements.txt
│   └── README.md
│
├── deep-learning-architectures-optimization/          # Redes neuronales densas y convolucionales
│   ├── notebooks/                                     # mlp_deep_regularization_benchmark, convolutional_vision_classifier...
│   ├── requirements.txt
│   └── README.md
│
├── nlp-toxic-content-transformers-benchmark/          # Extracción lingüística y Transformers
│   ├── data/                                          # Muestra representativa reproducible
│   ├── notebooks/                                     # hate_speech_linguistic_feature_extractor, transformer_finetuning...
│   ├── requirements.txt
│   └── README.md
│
├── computer-vision-industrial-satellite-analysis/     # Inspección industrial y teledetección satelital
│   ├── assets/                                        # Imágenes de test industrial y series satelitales
│   ├── notebooks/                                     # radiometric_enhancement_clahe, industrial_defect_detection...
│   ├── requirements.txt
│   └── README.md
│
├── enterprise-rag-azure-openai-engine/                # Búsqueda vectorial FAISS y Azure OpenAI
│   ├── agents/                                        # Arquitectura declarativa JSON de agentes
│   ├── notebooks/                                     # faiss_vector_retrieval_engine, azure_openai_enterprise_orchestrator...
│   ├── requirements.txt
│   └── README.md
│
└── autonomous-mars-rover-pddl-planner/                # Planificación espacial en PDDL y búsqueda A*
    ├── pddl/                                          # Dominios y problemas PDDL formales
    ├── notebooks/                                     # heuristic_state_space_search, pddl_mars_rover_autonomous_planner...
    ├── requirements.txt
    └── README.md
```

---

## 🔒 Security, Privacy & Production Principles

1. **Zero-Trust Security**: Ningún cuaderno o archivo de configuración contiene claves API privadas, tokens de acceso o cadenas de conexión quemadas (*hardcoded secrets*). Toda integración con APIs de LLMs se autentica mediante variables de entorno dinámicas aisladas en `.env` (bloqueadas globalmente por `.gitignore`).
2. **Rutas Relativas Portables**: Todas las referencias a recursos, imágenes y datos fueron normalizadas como rutas relativas (`../data/`, `../assets/`, `../pddl/`), garantizando ejecución transparente en Linux, macOS, Windows y contenedores Docker.
3. **Módulos con Dependencias Aisladas**: Cada proyecto cuenta con su propio archivo `requirements.txt` fijado para prevenir colisiones entre versiones de frameworks tensoriales (PyTorch / TensorFlow / OpenCV).
4. **Reproducibilidad Inmediata sin Reentrenamiento**: Todos los cuadernos conservan previamente sus celdas de ejecución con visualizaciones completas (curvas de pérdida, matrices de confusión, trazas numéricas y mapas de segmentación).

---

## ⚡ Quickstart

```bash
# 1. Clonar el repositorio
git clone https://github.com/nesstortilla/master-ai-portfolio.git
cd master-ai-portfolio

# 2. Elegir un proyecto e instalar dependencias
cd enterprise-rag-azure-openai-engine
python -m venv .venv
source .venv/bin/activate  # En Windows: .venv\Scripts\activate
pip install -r requirements.txt

# 3. Iniciar el entorno de desarrollo
jupyter lab
```

---

## 👨‍💻 Autor

- **Néstor León** — *Ingeniero en IA \| Especialista en Business Intelligence & Generative AI*
- **GitHub**: [@nesstortilla](https://github.com/nesstortilla)
- **LinkedIn**: [Néstor León del Campo](https://linkedin.com/in/nestor-leon-del-campo)
