# Módulo 06: Modelos Generativos, LLMs y Agentes Inteligentes

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)](https://www.python.org/)
[![Azure OpenAI](https://img.shields.io/badge/Azure-OpenAI%20Service-0078D4.svg)](https://azure.microsoft.com/)
[![FAISS](https://img.shields.io/badge/FAISS-Vector%20Search-0467DF.svg)](https://github.com/facebookresearch/faiss)
[![Hugging Face](https://img.shields.io/badge/Sentence--Transformers-Embeddings-yellow.svg)](https://sbert.net/)

Este módulo implementa soluciones empresariales de Inteligencia Artificial Generativa. Cubre desde la recuperación semántica vectorial de alta velocidad (componente esencial de sistemas **RAG - Retrieval-Augmented Generation**) hasta la orquestación segura y gobernada de Modelos de Lenguaje Masivos (LLMs como `gpt-4.1-mini`) en la nube de Microsoft Azure, integrando especificaciones de agentes autónomos.

---

## Estructura del Módulo

```text
06_modelos_generativos_y_llms/
├── agents/
│   └── tutor_inteligente_agents.json             # Grafo de estados, prompts de sistema y herramientas del agente
├── notebooks/
│   ├── 01_busqueda_semantica_faiss_embeddings.ipynb  # Motor vectorial con FAISS y Sentence Transformers
│   └── 02_orquestacion_azure_openai_gpt4.ipynb       # Cliente empresarial Azure OpenAI SDK v1.x
├── requirements.txt
└── README.md
```

---

## Proyectos Destacados

### 1. Búsqueda Semántica Vectorial con FAISS y Sentence Transformers
- **Objetivo**: Superar las limitaciones de los motores de búsqueda léxicos (BM25/TF-IDF) construyendo un pipeline de recuperación basado en proximidad semántica en espacios latentes de alta dimensión.
- **Arquitectura**:
  - Modelo de embeddings: `all-MiniLM-L6-v2` (384 dimensiones densas).
  - Indexación: `faiss.IndexFlatL2` para búsqueda exacta exhaustiva, escalable a arquitecturas invertidas (IVF) o grafos HNSW.
  - Formulación de consultas complejas y ranking top-k en microsegundos.

### 2. Orquestación Segura de LLMs con Azure OpenAI
- **Objetivo**: Integrar modelos generativos en aplicaciones corporativas bajo estándares estrictos de seguridad y privacidad (Zero-Trust, datos no utilizados para reentrenamiento, filtros de contenido).
- **Arquitectura**:
  - Gestión hermética de secretos mediante `.env` (sin credenciales hardcodeadas).
  - Control fino de hiperparámetros de muestreo estocástico: `temperature`, `top_p`, `frequency_penalty`, `presence_penalty` y presupuesto de tokens.
  - Implementación con el SDK oficial `openai>=1.14` (`AzureOpenAI`).

### 3. Especificación de Agentes Inteligentes
- **Archivo**: `agents/tutor_inteligente_agents.json`
- **Capacidades**:
  - Definición declarativa de roles, contexto del sistema, restricciones deontológicas y flujos de acción.
  - Enrutamiento inteligente de consultas educativas y asistencia guiada.

---

## Configuración y Variables de Entorno

Para ejecutar llamadas en vivo a Azure OpenAI:

1. Crea tu archivo local `.env` a partir de la plantilla del repositorio principal:
   ```bash
   cp ../.env.example .env
   ```
2. Completa los valores de tu recurso de Azure:
   ```dotenv
   AZURE_OPENAI_ENDPOINT=https://tu-recurso.openai.azure.com/
   AZURE_OPENAI_KEY=tu_api_key_privada
   AZURE_OPENAI_DEPLOYMENT_NAME=gpt-4.1-mini
   AZURE_OPENAI_API_VERSION=2024-12-01-preview
   ```

## Instalación

```bash
pip install -r requirements.txt
jupyter lab
```
