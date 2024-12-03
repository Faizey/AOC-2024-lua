local startTime = os.clock()

if #arg < 1 then
    print("Please provide a day")
    os.exit(1)
end

local dayInput = arg[1]

local solutionsModule = require(dayInput .. "/solutions")
local file = io.open(dayInput .. "/puzzle.txt", "r")
local puzzle = nil

if file then
    puzzle = file:read("*all")
    file:close()
else
    print("Failed to open the file.")
end

local solution1StartTime = os.clock()
local solution1Result = solutionsModule.solution_1(puzzle)
local solution1EndTime = os.clock()
print("Solution 1: " .. solution1Result)
print(string.format("Execution time for solution 1: %.4f ms", (solution1EndTime - solution1StartTime) * 1000))

local solution2StartTime = os.clock()
local solution2Result = solutionsModule.solution_2(puzzle)
local solution2EndTime = os.clock()
print("Solution 2: " .. solution2Result)
print(string.format("Execution time for solution 2: %.4f ms", (solution2EndTime - solution2StartTime) * 1000))

local endTime = os.clock()
print(string.format("Total execution time: %.4f ms", (endTime - startTime) * 1000))