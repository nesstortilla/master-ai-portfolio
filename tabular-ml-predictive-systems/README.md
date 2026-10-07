# Tabular ML & Predictive Systems Engineering

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)](https://www.python.org/)
[![Scikit-Learn](https://img.shields.io/badge/Scikit--Learn-1.3%2B-orange.svg)](https://scikit-learn.org/)
[![XGBoost](https://img.shields.io/badge/XGBoost-Ensemble-red.svg)](https://xgboost.readthedocs.io/)
[![Architecture](https://img.shields.io/badge/Architecture-Production--Pipelines-green.svg)](https://scikit-learn.org/)

Sistemas integrales de Machine Learning predictivo orientados a producción sobre datos tabulares de alta dimensionalidad y flujos de sensores ambientales en tiempo real.

---

## 🎯 Project Overview & Business Challenges

En este repositorio diseñé e implementé tres sistemas predictivos de grado productivo para resolver retos críticos de calibración física y clasificación de patrones complejos:

1. **Calibración Virtual de Sensores Químicos (`air_quality_sensor_calibration.ipynb`)**:
   - **Reto de Negocio**: Los sensores de estado sólido de bajo coste sufren degradación térmica, deriva temporal y sensibilidad cruzada a la humedad/temperatura, impidiendo su uso directo en monitorización de calidad del aire urbano.
   - **Solución**: Diseñé un modelo de regresión multivariable con regularización $L_1/L_2$ que calibra la matriz de sensores en tiempo real para predecir concentraciones de CO, NMHC, C6H6, NOx y NO2 con alta fidelidad.

2. **Clasificación Multiclase en Alta Dimensionalidad (`forest_cover_multiclass_classifier.ipynb`)**:
   - **Reto de Negocio**: Clasificar 7 coberturas forestales sobre un espacio de 54 variables geológicas y cartográficas dispersas, enfrentando severo desbalanceo de clases entre biomas dominantes y especies protegidas.
   - **Solución**: Implementé un benchmark comparativo de árboles de decisión y ensambles (Random Forest vs. XGBoost) con optimización estocástica y métricas de validación ponderadas.

3. **Pipeline de Inferencia End-to-End (`production_inference_pipeline.ipynb`)**:
   - **Reto Técnico**: Evitar la fuga de información (*data leakage*) entre particiones de entrenamiento y test, garantizando transformaciones deterministas para servicio en producción.
   - **Solución**: Construí una arquitectura desacoplada mediante `ColumnTransformer` y `Pipeline` con búsqueda por rejilla (*GridSearchCV*) y validación cruzada estratificada.

---

## 🏗️ Architecture & Tech Stack

- **Lenguaje & Core**: Python 3.10+, NumPy, Pandas.
- **Modelado & Ensambles**: Scikit-Learn (Ridge, Lasso, ElasticNet, RandomForestClassifier), XGBoost, LightGBM.
- **Validación & Métricas**: Stratified K-Fold, Repetitive CV, $R^2$, RMSE, MAE, F1-Score Macro/Weighted.
- **Patrones de Diseño**: Pipeline Pattern (`sklearn.pipeline`), serialización hermética con `joblib`.

```text
tabular-ml-predictive-systems/
├── data/
│   ├── AirQualityUCI.csv              # Mediciones de sensores químicos y microclima
│   ├── covertype_sample.csv           # Muestra estratificada para pruebas rápidas
│   └── out.csv                        # Dataset estructurado para modelado
├── notebooks/
│   ├── air_quality_sensor_calibration.ipynb       # Pipeline de calibración y regresión
│   ├── forest_cover_multiclass_classifier.ipynb   # Clasificador multiclase con ensambles
│   └── production_inference_pipeline.ipynb        # Pipeline hermético de inferencia
├── requirements.txt
└── README.md
```

---

## 📊 Key Results & Quantitative Metrics

| Sistema | Modelo Óptimo | Métrica Principal | Rendimiento Alcanzado | Impacto Operativo |
| :--- | :--- | :--- | :--- | :--- |
| **Calibración de Sensores** | Random Forest Regressor | $R^2$ Score / RMSE | **$R^2 = 0.92$** / RMSE reducido un 64% | Convierte hardware IoT económico en mediciones de precisión cuasi-industrial. |
| **Forest Cover Classifier** | XGBoost (tuned) | Macro F1-Score | **$F_1 = 0.88$** (Accuracy general: 89.4%) | Detección robusta de especies arbóreas minoritarias sin sobreajuste. |
| **Production Pipeline** | Ridge + Standard Scaling | Inferencia de latencia | **$< 2$ ms por inferencia** | Pipeline 100% libre de fuga de datos, listo para API REST/gRPC. |

---

## ⚡ Quickstart & Reproducibility

```bash
# 1. Instalar dependencias aisladas
pip install -r requirements.txt

# 2. Iniciar el entorno interactivo
jupyter lab
```
