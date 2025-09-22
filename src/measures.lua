local measures = { }

function measures.mean (nset)
        local sum = 0
        for i=1,#nset do
                sum = sum + nset[i];
        end
        return sum / #nset
end

function measures.trimmedmean (nset, percentage)
        local removed = math.ceil((#nset * (percentage / 100)) / 2)
        for i=1,removed do
                table.remove(nset, 1)
        end
        for i=1,removed do
                table.remove(nset, #nset)
        end
        for i=1,#nset do
                print(nset[i])
        end
        return measures.mean(nset)
end

function measures.median (nset)
        if #nset % 2 == 0 then
                return measures.mean({ nset[#nset / 2], nset[#nset / 2 + 1] })
        else
                return nset[math.ceil(#nset / 2)]
        end
end

function measures.range (nset)
        return math.max(table.unpack(nset)) - math.min(table.unpack(nset))
end

function measures.midrange(nset)
        return (math.max(table.unpack(nset)) + math.min(table.unpack(nset))) / 2
end

return measures
