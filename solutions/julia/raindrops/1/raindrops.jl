function raindrops(number)
    result = ""
    if number % 3 == 0
        result = result * "Pling"
    end
    if number % 5 == 0
        result = result * "Plang"
    end
    if number % 7 == 0
        result = result * "Plong"
    end
    if result == ""
        result = string(number)
    end
    return result
end
