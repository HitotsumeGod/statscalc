function usage ()
        print("Options are: mean, trimmedmean x, median, mode, range, midrange")
end

local mathlib = require("measures")
local nums = { }
local fileArg = 2
if not arg[1] then
        usage()
        return
end
if arg[1] == "trimmedmean" then
        fileArg = 3
end
if arg[fileArg] then
        local ind = 1
        for s in io.lines(arg[fileArg]) do
                for n in string.gmatch(s, "%d+") do
                        nums[ind] = n
                        ind = ind + 1
                end
        end
else
        print("Please input number set.")
        local set = io.read()
        local ind = 1
        for n in string.gmatch(set, "%d+") do
                nums[ind] = n
                ind = ind + 1
        end
end
if arg[1] == "mean" then
        print(mathlib.mean(nums))
elseif arg[1] == "trimmedmean" then
        local percentage = tonumber(arg[2])
        if percentage then
                print(mathlib.trimmedmean(nums, percentage))
        else
                usage()
                return
        end
elseif arg[1] == "median" then
        print(mathlib.median(nums))
elseif arg[1] == "range" then
        print(mathlib.range(nums))
elseif arg[1] == "midrange" then
        print(mathlib.midrange(nums))
end
