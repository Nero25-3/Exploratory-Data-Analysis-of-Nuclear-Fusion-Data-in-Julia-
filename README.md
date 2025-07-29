# Exploratory Data Analysis of Nuclear Fusion Data in Julia
Intro project to explore and visualize simple nuclear fusion data using Julia scripts from CLI. Generate stats and PNG plots. Great for learning Julia and fusion basics.

## Project Objectives

- Learn to use Julia for scientific data analysis via terminal scripts.  
- Simulate or import simple nuclear fusion datasets (e.g., plasma temperature, density, confinement time).  
- Clean data, compute basic statistics, and visualize relationships with PNG plots.  
- Draw conclusions about data trends, documented with comments and text files.

## Suggested Steps

1. **Generate simulated Data:**  
   - Create synthetic CSVs with columns like:  
     - `temperature_million_C`  
     - `density_10e20_particles_per_m3`  
     - `confinement_time_s`  


2. **Process data in Julia:**  
   - Use `CSV.jl` and `DataFrames.jl` in CLI scripts.  
   - Calculate mean, max, min, std dev; print results.  
   - Plot histograms and scatter plots using `Plots.jl`, export as PNG.

3. **Document results:**  
   - Write observations in `RESULTS.txt`.  
   - Comment your Julia code clearly.

## Julia packages used


## Notes

This project is CLI/script based—no notebooks needed. All results and documentation are plain text and image files. Perfect for starting with Julia and nuclear fusion data :).

