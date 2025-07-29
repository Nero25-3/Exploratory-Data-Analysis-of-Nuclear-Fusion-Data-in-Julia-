using Test
include("../src/generate_data.jl")
using CSV
using DataFrames

@testset "Pruebas de generación de datos" begin
    try
        df = generate_synthetic_data(100)
        @test nrow(df) == 100
        @test minimum(df.temperaturePlasma) >= 80.0
        @test maximum(df.temperaturePlasma) <= 150.0
        @test all(0.2 .<= df.densityPlasma .<= 1.2)
    catch e
        @warn "Error en pruebas de generación de datos: $e"
        rethrow(e)
    end
end

@testset "Pruebas de guardado a CSV" begin
    try
        # Guarda el archivo en la carpeta del script de test para evitar problemas de ruta
        filepath = joinpath(@__DIR__, "test_data.csv")
        df = generate_synthetic_data(50)
        save_to_csv(df, filepath)
        @test isfile(filepath)
        
        # Lee el CSV para verificar contenido
        df_read = CSV.read(filepath, DataFrame)
        @test nrow(df_read) == 50
        @test all(df_read.temperaturePlasma .>= 80.0)
        @test all(df_read.temperaturePlasma .<= 150.0)
    catch e
        @warn "Error en pruebas de guardado a CSV: $e"
        rethrow(e)
    end
end

