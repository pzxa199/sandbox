function GetWheelPrizeConfig()
    return {
        {150, { slice = 6, type = "cash", value = 3000 }}, -- $3,000
        {100, { slice = 9, type = "alcohol" }}, -- Alcohol
        {80, { slice = 8, type = "chips", value = "random" }}, -- Random Chips
        {1, { slice = 7, type = "cash", value = 90000 }}, -- $90,000
        {100, { slice = 1, type = "alcohol" }}, -- Alcohol
        {300, { slice = 2, type = "cash", value = 1500 }}, -- $1,500
        --{1, { slice = 5, type = "house", bigWin = true }}, -- Discount (on a House)
        {8, { slice = 3, type = "cash", value = 25000 }}, -- $25,000
        {400, { slice = 4, type = "nothing" }}, -- 0 Chips
        {400, { slice = 10, type = "cash", value = 100 }}, -- $100
        {8, { slice = 11, type = "chips", value = 25000 }}, -- 25,000 Chips
        {100, { slice = 13, type = "alcohol" }}, -- Alcohol
        --{1, { slice = 12, type = "mystery" }}, -- Mystery
        {400, { slice = 14, type = "nothing" }}, -- $0
        {200, { slice = 15, type = "cash", value = 3000 }}, -- $3,000
        --{1, { slice = 19, type = "vehicle", bigWin = true }}, -- Vehicle
        {200, { slice = 16, type = "chips", value = 1500 }}, -- 1500 Chips
        --{1, { slice = 20, type = "cash", value = 150000, bigWin = true }}, -- $150,000
        {100, { slice = 17, type = "alcohol" }}, -- Alcohol
        {50, { slice = 18, type = "cash", value = "random" }}, -- Random $$$
    }
end

_wheelPrizesDefault = { slice = 2, type = "cash", value = 1500 }