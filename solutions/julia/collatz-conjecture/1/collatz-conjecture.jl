function collatz_steps(n)
    if n <= 0
        throw(DomainError(n, "Number must be strictly positive"))
    end
    i = 0
    while n != 1
        if n % 2 == 0
            n = Int(n / 2)
        else
            n = n*3 + 1
        end
        i = i + 1
    end
    return i
end
