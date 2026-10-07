# Módulo 07: Razonamiento y Planificación Automática

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)](https://www.python.org/)
[![PDDL](https://img.shields.io/badge/PDDL-2.1%20Planning-blueviolet.svg)](https://planning.wiki/)
[![AI-Search](https://img.shields.io/badge/Heuristic--Search-A*--BFWS-success.svg)](https://github.com/simpleai-team/simpleai)

Este módulo aborda la resolución formal de problemas complejos en Inteligencia Artificial Simbólica y Razonamiento Automatizado. Se cubren algoritmos de búsqueda informada en espacios de estados discretos (A\*, Greedy, Hill Climbing), diseño de funciones heurísticas admisibles y consistentes, y planificación clásica declarativa formalizada en PDDL (*Planning Domain Definition Language*) resuelta mediante planificadores heurísticos modernos (*BFWS*).

---

## Estructura del Módulo

```text
07_razonamiento_y_planificacion/
├── pddl/                                              # Definiciones formales PDDL
│   ├── rovers_dominio.pddl                            # Dominio espacial de exploración rover
│   ├── rovers_problema.pddl                           # Instancia con waypoint, objetivos y batería
│   ├── rovers_parte4_dominio.pddl                     # Extensión del dominio rover
│   ├── rovers_parte4_problema.pddl                    # Instancia extendida
│   ├── logistica_dominio.pddl                         # Dominio clásico de transporte logístico
│   └── logistica_prob01.pddl                          # Instancia de distribución logística
├── notebooks/
│   ├── 01_busqueda_heuristica_espacio_estados.ipynb   # Búsqueda A*, heurísticas euclidianas y Manhattan
│   └── 02_planificacion_automatica_rover_pddl.ipynb   # Planificación PDDL, Forward/Backward chaining y BFWS
├── requirements.txt
└── README.md
```

---

## Proyectos Destacados

### 1. Búsqueda Heurística en Espacios de Estados (A\*, Greedy)
- **Problema**: Navegación óptima de agentes autónomos en laberintos y grafos espaciales con diferentes costes topográficos y obstáculos.
- **Técnicas implementadas**:
  - Modelado formal: Espacio de estados, función de transición $T(s, a)$, coste de camino $g(n)$ y coste heurístico estimado $h(n)$.
  - Comparativa de heurísticas: Distancia Manhattan vs. Distancia Euclidiana vs. Heurística nula (Búsqueda por Coste Uniforme).
  - Verificación empírica de admisibilidad ($h(n) \le h^*(n)$) y consistencia ($h(n) \le c(n, a, n') + h(n')$) garantizando optimalidad.
  - Análisis de métricas: Número de nodos expandidos, nodos generados, profundidad del árbol y tiempo de ejecución.

### 2. Planificación Automática de Misiones Espaciales con PDDL (Rover Marciano)
- **Problema**: Secuenciación autónoma de acciones para un vehículo de exploración en Marte con recursos finitos (batería discreta `b0`-`b4`), almacén físico de muestras limitado y ventanas de comunicación con la base (*Lander*).
- **Metodología y Análisis**:
  - **Encadenamiento hacia adelante (Forward Chaining)**: Progresión analítica desde el estado inicial instanciando acciones aplicables (`Maps-bat`, `sample_rock`).
  - **Encadenamiento hacia atrás (Backward Chaining)**: Regresión desde los objetivos (`communicated_soil_data`, `communicated_image_data`) determinando dependencias causales.
  - **Ejecución con Planificador BFWS (Best-First Width Search)**:
    - Nodos generados: **93**.
    - Nodos expandidos: **42**.
    - Tiempo de cómputo: **0.00027 segundos**.
    - Makespan óptimo: **10 pasos** con retorno energético seguro (`b2`).

---

## Instalación y Uso

```bash
pip install -r requirements.txt
jupyter lab
```
