function time_to_mix_juice(juice)
    if juice == "Pure Strawberry Joy" 
        return 0.5
    elseif juice == "Energizer" || juice == "Green Garden"
        return 1.5
    elseif juice == "Tropical Island"
        return 3
    elseif juice == "All or Nothing"
        return 5
    else
        return 2.5
    end
end

function wedges_from_lime(size)
    if size == "small"
        return 6
    elseif size == "medium"
        return 8
    elseif size == "large"
        return 10
    end
end

function limes_to_cut(needed, limes)
    i = 1
    while needed > 0 && i <= length(limes)
        needed = needed - wedges_from_lime(limes[i])
        i = i + 1
    end
    return i-1
end

function order_times(orders)
    times = []
    for order in orders
        push!(times, time_to_mix_juice(order))
    end
    return times
end

function remaining_orders(time_left, orders)
    while time_left > 0 && 1 <= length(orders)
        time_left = time_left - time_to_mix_juice(orders[1])
        popfirst!(orders)
    end
    return orders
end
