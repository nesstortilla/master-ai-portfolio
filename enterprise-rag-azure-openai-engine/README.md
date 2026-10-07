# Enterprise RAG & Azure OpenAI Orchestration Engine

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)](https://www.python.org/)
[![Azure OpenAI](https://img.shields.io/badge/Azure-OpenAI%20Service-0078D4.svg)](https://azure.microsoft.com/)
[![FAISS](https://img.shields.io/badge/FAISS-Vector%20Search-0467DF.svg)](https://github.com/facebookresearch/faiss)
[![Sentence Transformers](https://img.shields.io/badge/Sentence--Transformers-Embeddings-yellow.svg)](https://sbert.net/)

Motor empresarial de Inteligencia Artificial Generativa: Recuperación Semántica Vectorial de alta velocidad para arquitecturas RAG (*Retrieval-Augmented Generation*), orquestación gobernada de LLMs en Microsoft Azure y especificación de agentes inteligentes.

---

## 🎯 Project Overview & Business Challenges

1. **Motor de Búsqueda Vectorial con FAISS (`faiss_vector_retrieval_engine.ipynb`)**:
   - **Reto de Negocio**: Los sistemas clásicos de recuperación basados en palabras clave (BM25) fallan al responder consultas complejas o perifrásticas sobre bases de conocimiento corporativas. Se requería un motor de búsqueda por intención semántica con latencia sub-milisegundo.
   - **Solución**: Diseñé un pipeline de indexación vectorial utilizando `sentence-transformers/all-MiniLM-L6-v2` (espacio latente de 384 dimensiones) y construí un índice `faiss.IndexFlatL2` para recuperación exacta de los k-vecinos más cercanos (top-k), componente núcleo de cualquier pipeline RAG empresarial.

2. **Orquestación Corporativa con Azure OpenAI SDK (`azure_openai_enterprise_orchestrator.ipynb`)**:
   - **Reto de Seguridad & Gobernanza**: Integrar modelos de lenguaje masivos (`gpt-4.1-mini`) garantizando cumplimiento estricto de privacidad de datos (datos no utilizados para entrenamiento público), aislamiento de red, filtros de seguridad de contenido y cero credenciales quemadas en el código fuente.
   - **Solución**: Desarrollé un cliente modular y seguro utilizando el SDK oficial `AzureOpenAI` (v1.x), desacoplando la configuración mediante variables de entorno aisladas (`.env`), con control fino de hiperparámetros estocásticos (`temperature`, `top_p`, penalties) y manejo de fallback controlado.

3. **Arquitectura Declarativa de Agentes Autónomos (`agents/enterprise_ai_agent_architecture.json`)**:
   - **Capacidad**: Especificación formal de un sistema multi-herramienta con memoria contextual, prompts de sistema desacoplados y reglas deontológicas de ejecución para asistencia técnica inteligente.

---

## 🏗️ Architecture & Tech Stack

- **Modelos Generativos & Embeddings**: `sentence-transformers/all-MiniLM-L6-v2`, Azure OpenAI `gpt-4.1-mini`.
- **Indexación Vectorial**: Facebook AI Similarity Search (`faiss-cpu`), Distancia Euclidiana L2, escalable a grafos HNSW.
- **SDKs & Orquestación**: `openai>=1.14`, `python-dotenv`, NumPy, PyTorch.
- **Seguridad**: Configuración Zero-Trust mediante `.env`, prevención de inyecciones en prompts y presupuestos de tokens estrictos.

```text
enterprise-rag-azure-openai-engine/
├── agents/
│   └── enterprise_ai_agent_architecture.json  # Especificación declarativa de agentes inteligentes
├── notebooks/
│   ├── faiss_vector_retrieval_engine.ipynb        # Pipeline vectorial con FAISS y Sentence Transformers
│   └── azure_openai_enterprise_orchestrator.ipynb # Orquestación empresarial en Azure OpenAI
├── requirements.txt
└── README.md
```

---

## 📊 Key Results & Quantitative Metrics

| Componente | Algoritmo / Modelo | Métrica | Rendimiento Obtenido | Ventaja Operativa |
| :--- | :--- | :--- | :--- | :--- |
| **Búsqueda Vectorial** | FAISS FlatL2 + MiniLM-L6 | Latencia de búsqueda Top-1 | **$< 0.4$ ms por consulta** | Indexación instantánea en memoria; recuperación conceptual de máxima fidelidad. |
| **Azure OpenAI Client** | GPT-4.1-mini (Azure API) | Presupuesto y tokens | **Control de 2048 tokens máx** | Inferencia gobernada y segura bajo estándares de cumplimiento empresarial. |
| **Arquitectura de Agentes** | Grafo JSON declarativo | Estructura de decisión | **100% auditable y reproducible** | Fácilmente integrable en motores tipo LangGraph, CrewAI o Semantic Kernel. |

---

## ⚡ Quickstart & Reproducibility

```bash
# 1. Instalar dependencias
pip install -r requirements.txt

# 2. Configurar variables de entorno locales (opcional para llamadas a Azure en vivo)
cp ../.env.example .env

# 3. Iniciar el entorno
jupyter lab
```
