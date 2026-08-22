function score(x, y)
    r = sqrt(x^2+y^2)
    score = 0
    if 5 < r <= 10
        score = 1
    elseif 1 < r <= 5
        score = 5
    elseif r <= 1
        score = 10
    end
    return score
end
