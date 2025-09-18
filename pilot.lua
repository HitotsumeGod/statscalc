local mathlib = require("measures")
local nums = { }
for i=1,34670 do
        nums[i] = i
end
print(mathlib.mean(nums))