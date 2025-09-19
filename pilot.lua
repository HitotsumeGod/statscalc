local mathlib = require("measures")
local nums = { }
if not arg[1] then
        print("Please input number set.")
        local ind = 1
        while true do
                local num = io.read("n")
                if num then
                        nums[ind] = num
                        ind = ind + 1
                else
                        break
                end
        end
end
print(mathlib.mean(nums))