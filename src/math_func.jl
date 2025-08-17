
function mean_value(data::vector{Float64})::Float64
    """
        mean_value compute the arithmetic mean of numeric array `x`.

        Formula:  mean = (1/N) * sum(x_i)
    """
    
    
    return sum(data) / length(data)
end


function std_deviation(data::Vector{Float64})::Float64
    """
    Calculate the standard deviation of a dataset.
    
    Returns the standard deviation as a Float64.
    """
    
    mean_val = mean_value(data)
    variance = sum((x - mean_val)^2 for x in data) / (length(data) - 1)
    return sqrt(variance)
end

function min_value(data::Vector{Float64})::Float64
    """
    Calculate the minimum value of a dataset.
    
    Returns the minimum value as a Float64.
    """

    
    return minimum(data)
end


function max_value(data::Vector{Float64})::Float64
    """
    Calculate the maximum value of a dataset.
    
    Returns the maximum value as a Float64.
    """
    
    return maximum(data)
end


