# scripts/generate_data.jl
# This script generates synthetic data for fusion models.

using Random
using DataFrames    
using CSV


Random.seed!(1234)




# Function to generate synthetic data
function generate_synthetic_data(num_samples::Int)
    # Generate random data
    temperature = rand(80.0:0.1:150.0,num_samples) #plasma temperature (millions of ¤C)
    density = rand(0.2:0.01:1.2,num_samples) #plasma density
    confinement_time = 0.1 .+ 1.7 .* (temperature ./ 120) .* (density ./ 0.7) .+ randn(num_samples).*0.2 #confinement time (seconds)
    
    # Create a DataFrame to hold the synthetic data
    data = DataFrame(
        id = 1:num_samples,
        temperaturePlasma = temperature,
        densityPlasma = density,
        confinement_time_Plasma = confinement_time,
    )   

    return data
end

function save_to_csv(df::DataFrame, filepath::String)
    CSV.write(filepath, df)
    println("Synthetic data saved to $filepath")
end

function main()
    Random.seed!(1234) # Set random seed for reproducibility
    number_samples = 150     # Numbers of rows
    df = generate_synthetic_data(number_samples)
    save_to_csv(df, "../data/synthetic_fusion_data.csv")
end

# Run the main function if this script is executed directly
if abspath(PROGRAM_FILE) == @__FILE__
    main()
end