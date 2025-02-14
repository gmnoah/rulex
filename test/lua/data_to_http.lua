--@diagnostic disable: undefined-global
-- Success
function Success()
end

-- Failed
function Failed(error)
    print("Error:", error)
end

-- Actions
Actions =
{
    --        ┌────────────────────────────────────────
    -- data = |00 00 00 01|00 00 00 01|00 00 00 01|00 00 00 01|
    --        └────────────────────────────────────────
    function(data)
        local jsont = {
            tag1 = data[0],
            tag2 = data[1],
            tag3 = data[2],
            tag4 = data[3],
        }
        rulexlib:DataToHttp('OUTEND', rulexlib:T2J(jsont))
        return true, data
    end
}
