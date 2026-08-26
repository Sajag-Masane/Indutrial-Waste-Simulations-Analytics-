# Industrial Waste Simulations & Analytics

A project exploring industrial waste management, process optimization, and valorization strategies, with a detailed case study on the **sugar industry**. The work covers waste classification, process flow analysis, optimization techniques (including ASPEN-based simulation), Life Cycle Assessment (LCA), Product Carbon Footprint (PCF), and cost-benefit analysis of waste-to-value conversion strategies.

## Author

**Sajag Masane** (230896)

## Repository Contents

| File | Description |
|---|---|
| `MidTermEval_Sajag_230896.pdf` | Mid-term report covering foundational concepts: types of industrial waste, waste management strategies, Process Flow Diagrams (PFDs), process optimization techniques, valorization feasibility, Product Carbon Footprint (PCF), and Life Cycle Assessment (LCA) fundamentals. |
| `230896_End_Term_Report_-_Sugar_Industry.pdf` | End-term report presenting a complete waste management plan for a sugar mill processing 5,000 tons of sugarcane/day — including material & energy balances, waste stream analysis, optimization strategies, LCA/PCF results, and a full cost-benefit analysis. |
| Project Presentation | Overview slide deck summarizing the project's motivation, methodology, and key findings. |

## Project Overview

### 1. Mid-Term Report — Foundations of Industrial Waste Management
Establishes the conceptual groundwork for the project:
- **Waste classification**: Hazardous, Non-Hazardous, Inert, and Biodegradable waste.
- **Waste management strategies**: Waste minimization (process optimization, material substitution, product design), recycling, and reuse.
- **Process Flow Diagrams (PFDs)**: Graphical representation of equipment, flow streams, control valves, and operating conditions used to identify optimization opportunities.
- **Process optimization**: Defining objectives/constraints, using predictive models, and applying tools such as MATLAB, ASPEN, and HYSYS. Includes a practical exercise optimizing a flash distillation unit in ASPEN (with and without constraints) to maximize profit.
- **Valorization**: Framework for evaluating the economic, technical, environmental, and market feasibility of converting waste into valuable products (e.g., biofuels, compost, recycled materials).
- **Environmental impact assessment**: Introduction to Product Carbon Footprint (PCF) and Life Cycle Assessment (LCA), and guidance on when to apply each.

### 2. End-Term Report — Case Study: Sugar Industry Waste Management Plan
Applies the mid-term concepts to a full-scale waste management plan for a typical sugar mill (5,000 tons sugarcane/day):

- **Block diagram** of the sugar milling process — from washing and crushing through clarification, evaporation, crystallization, boiler/effluent systems, and reuse loops.
- **Material & energy balances** quantifying inputs (sugarcane, water, chemicals) and outputs (sugar, bagasse, press mud, molasses, effluent, emissions).
- **Waste stream characterization**: solid (bagasse, press mud), liquid (high-BOD/COD effluent), and gaseous (CO₂, SOx, NOx) waste, along with current handling practices.
- **Optimization strategies**:
  - Bagasse valorization via anaerobic digestion and briquetting.
  - Press mud composting into organic fertilizer.
  - Advanced effluent treatment (anaerobic digestion + membrane bioreactors) enabling water reuse.
  - Emission control via wet scrubbers and boiler efficiency improvements.
- **Before/after comparison** showing up to 100% reduction in landfilled waste, 80% effluent reuse, and 10% CO₂ reduction.
- **LCA & PCF analysis**: Cradle-to-gate assessment showing GWP reduction from 3,000 to 2,400 kg CO₂eq/ton sugar, 80% reduction in water use, and near-elimination of eutrophication potential.
- **Cost-benefit analysis**: Capital costs (~$4.3M) for biogas plant, membrane bioreactors, scrubbers, and composting facility, offset by ~$1.5M/year in savings and revenue — yielding a payback period of ~2.8 years and a strongly positive NPV.
- **Final recommendations** and a phased implementation roadmap.

### 3. Project Presentation
A concise overview deck summarizing the problem statement, methodology, and key results from both reports, intended for quick review of the project's scope and outcomes.

## Key Results Summary

| Metric | Baseline | Optimized | Change |
|---|---|---|---|
| Bagasse (landfilled) | 150 t/day | 0 t/day | −100% |
| Press Mud (landfilled) | 150 t/day | 0 t/day | −100% |
| Effluent (discharged) | 9,000 m³/day | 1,800 m³/day | −80% |
| CO₂ Emissions | 1,500 t/day | 1,350 t/day | −10% |
| Product Carbon Footprint | 3,000 kg CO₂eq/ton | 2,400 kg CO₂eq/ton | −20% |
| Water Use (LCA) | 20 m³/ton | 4 m³/ton | −80% |
| Payback Period | — | ~2.8 years | — |

## References
- Central Pollution Control Board — Charter for Water Recycling & Pollution Prevention in Sugar Industries: https://cpcb.nic.in/ngrba/charter_sugar.pdf
- Central Pollution Control Board — Charter 2.0 for Sugar Industries: https://cpcb.nic.in/ngrba/Charter-2.0-Sugar.pdf
- Sachdeva, A., et al. (2024). *Waste-to-energy — The recycling and reuse of sugar industry waste for different value-added products such as bioenergy in selected countries – a critical review.* https://www.researchgate.net/publication/379543482
