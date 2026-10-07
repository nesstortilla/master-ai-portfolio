# Autonomous Mars Rover: PDDL Planning & State-Space Search

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)](https://www.python.org/)
[![PDDL](https://img.shields.io/badge/PDDL-2.1%20Planning-blueviolet.svg)](https://planning.wiki/)
[![AI-Search](https://img.shields.io/badge/Heuristic--Search-A*--BFWS-success.svg)](https://github.com/simpleai-team/simpleai)
[![Autonomous Systems](https://img.shields.io/badge/Robotics-Space%20Exploration-red.svg)](https://nasa.gov)

Sistemas autónomos de toma de decisiones para robótica espacial y logística compleja mediante búsqueda informada en espacios de estados (A*) y planificación clásica declarativa en PDDL 2.1 con planificadores heurísticos modernos (BFWS).

---

## 🎯 Project Overview & Business Challenges

1. **Optimizador Heurístico de Rutas Logísticas (`heuristic_state_space_search_solver.ipynb`)**:
   - **Reto de Negocio**: Navegación óptima de vehículos autónomos en redes de distribución con topografías complejas y obstáculos dinámicos, minimizando el consumo energético y el coste computacional de exploración.
   - **Solución**: Modelé formalmente el espacio de estados $S$, funciones de transición $T(s, a)$ y comparé sistemáticamente algoritmos de búsqueda informada (A\*, Greedy Best-First, Hill Climbing). Diseñé y demostré la **admisibilidad** y **consistencia** de heurísticas espaciales (Manhattan vs. Euclidiana) garantizando la optimalidad matemática del camino.

2. **Planificación de Misiones Espaciales con PDDL (`pddl_mars_rover_autonomous_planner.ipynb`)**:
   - **Reto Crítico en Robótica Espacial**: Un vehículo de exploración en Marte cuenta con ventanas de comunicación finitas hacia el módulo de aterrizaje (*Lander*), capacidad de batería discreta limitada (`b0`-`b4`) y un contenedor físico de muestras que debe vaciarse antes de recolectar nuevos minerales. El planificador debe secuenciar acciones sin intervención humana en tiempo real.
   - **Solución**: Formalicé el dominio y los problemas en PDDL 2.1 (`rovers_dominio.pddl`, `rovers_problema.pddl`), implementando análisis analítico de encadenamiento hacia adelante (*Forward Chaining*) y hacia atrás (*Backward Chaining*), y resolviendo la misión mediante el planificador heurístico de última generación `BFWS` (*Best-First Width Search*).

---

## 🏗️ Architecture & Tech Stack

- **Modelado Declarativo**: PDDL 2.1 (Planning Domain Definition Language): Tipos jerárquicos, predicados lógicos y esquemas de acción con precondiciones y efectos.
- **Planificadores & Búsqueda**: Planificador BFWS (*Best-First Width Search* con heurística Novelty $w=1$ y Fast-Forward), biblioteca `simpleai`.
- **Análisis de Algoritmos**: A\* Search con heurísticas consistentes, BFS, DFS, Uniform Cost Search.
- **Visualización & Grafos**: Matplotlib, Graphviz, PyDot.

```text
autonomous-mars-rover-pddl-planner/
├── pddl/                                              # Definiciones formales PDDL 2.1
│   ├── rovers_dominio.pddl                            # Dominio robótico espacial con gestión de energía
│   ├── rovers_problema.pddl                           # Instancia de misión: waypoints, muestras y batería
│   ├── rovers_parte4_dominio.pddl                     # Extensión del dominio rover
│   ├── rovers_parte4_problema.pddl                    # Instancia extendida
│   ├── logistica_dominio.pddl                         # Dominio de transporte y distribución logística
│   └── logistica_prob01.pddl                          # Instancia de distribución logística
├── notebooks/
│   ├── heuristic_state_space_search_solver.ipynb      # Motor de búsqueda A* y análisis de heurísticas
│   └── pddl_mars_rover_autonomous_planner.ipynb       # Planificador autónomo PDDL para misión a Marte
├── requirements.txt
└── README.md
```

---

## 📊 Key Results & Quantitative Metrics

| Sistema | Algoritmo / Planificador | Métrica | Rendimiento Obtenido | Eficiencia Operativa |
| :--- | :--- | :--- | :--- | :--- |
| **Búsqueda A\*** | A\* con Heurística Euclidiana | Nodos expandidos / Coste | **Reducción de nodos expandidos en un 73%** frente a Búsqueda por Coste Uniforme | Camino matemática y probadamente óptimo. |
| **Planificador Rover Marciano** | BFWS-dual-ff-parser (PDDL) | Nodos generados / Nodos expandidos | **93 generados / 42 expandidos** | Poda heurística extrema gracias a la métrica Novelty ($w=1$). |
| **Tiempo de Cómputo Rover** | BFWS | Tiempo de CPU | **$0.00027$ segundos** | Resolución casi instantánea en procesador de aviónica embarcado. |
| **Makespan del Plan** | Planificador PDDL | Longitud del plan óptimo | **10 pasos secuenciales** | Misión cumplida con retorno energético seguro (batería remanente `b2`). |

---

## ⚡ Quickstart & Reproducibility

```bash
pip install -r requirements.txt
jupyter lab
```
