# Módulo 01: Técnicas de Aprendizaje Automático Supervisado

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)](https://www.python.org/)
[![Scikit-Learn](https://img.shields.io/badge/Scikit--Learn-1.3%2B-orange.svg)](https://scikit-learn.org/)
[![XGBoost](https://img.shields.io/badge/XGBoost-Ensemble-red.svg)](https://xgboost.readthedocs.io/)

Este módulo reúne los proyectos aplicados y entregables técnicos de **Técnicas de Aprendizaje Automático (TAA)**. Se abordan flujos completos de Machine Learning: desde el análisis exploratorio de datos (EDA) y preprocesamiento riguroso, hasta la optimización de hiperparámetros y validación cruzada multiclase en escenarios reales.

---

## Proyectos Prácticos

```text
01_machine_learning_supervisado/
├── data/
│   ├── AirQualityUCI.csv              # Mediciones de calidad del aire y sensores químicos
│   ├── covertype_sample.csv           # Muestra representativa de tipos de cobertura forestal (55 variables)
│   └── out.csv                        # Dataset procesado para modelado predictivo
├── notebooks/
│   ├── 01_calidad_aire_regresion.ipynb        # Regresión y calibración de sensores ambientales
│   ├── 02_forest_cover_clasificacion.ipynb    # Clasificación multiclase en alta dimensionalidad
│   └── 03_modelado_predictivo_avanzado.ipynb  # Pipeline end-to-end y selección de modelos
├── requirements.txt
└── README.md
```

---

## Descripción Técnica de los Proyectos

### 1. Estimación de Calidad del Aire mediante Regresión (`01_calidad_aire_regresion.ipynb`)
- **Problema**: Calibración de una matriz de sensores químicos de bajo coste para predecir concentraciones de contaminantes atmosféricos (CO, NMHC, C6H6, NOx, NO2) en entornos urbanos.
- **Técnicas implementadas**:
  - Imputación de valores ausentes (-200 sensor error) mediante interpolación temporal y distribución de vecinos.
  - Normalización robusta (`RobustScaler`) frente a picos de polución.
  - Modelos lineales regularizados (Ridge, Lasso, ElasticNet) frente a regresores no lineales basados en árboles.
  - Validación cruzada K-Fold con métricas $R^2$, RMSE y MAE.

### 2. Clasificación Multiclase Forest CoverType (`02_forest_cover_clasificacion.ipynb`)
- **Problema**: Clasificación de tipos de cobertura forestal en áreas silvestres de Colorado utilizando 54 variables cartográficas, geológicas y topográficas.
- **Técnicas implementadas**:
  - Tratamiento del desbalanceo de clases severo y características dispersas one-hot.
  - Modelado con Random Forest y Gradient Boosting (XGBoost).
  - Optimización de hiperparámetros (`max_depth`, `n_estimators`, `subsample`).
  - Evaluación integral: matriz de confusión multiclase, precisión, recall y F1-Score ponderado y macro.

### 3. Pipeline Predictivo Avanzado (`03_modelado_predictivo_avanzado.ipynb`)
- **Problema**: Construcción de un flujo de inferencia productivo, reproducible y hermético contra fuga de información (*data leakage*).
- **Técnicas implementadas**:
  - Encapsulamiento con `sklearn.pipeline.Pipeline` y `ColumnTransformer`.
  - Búsqueda sistemática por rejilla con validación cruzada estratificada.

---

## Instalación y Ejecución

```bash
pip install -r requirements.txt
jupyter lab
```
