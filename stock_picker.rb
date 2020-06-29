def stock_picker(days)
    max = days[1] - days[0]
    for i in (0...days.length)
        for j in (i + 1...days.length)
            if days[j] - days[i] > max
                max = days[j] - days[i]
                bestDays = [i, j]
            end
        end
    end
    p bestDays
end

days = [17,3,6,9,15,8,6,1,10]
stock_picker(days)