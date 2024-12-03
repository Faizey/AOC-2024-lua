local module = {}

function module.solution_1(input)
    local answer = 0
    local left_col = {}
    local right_col = {}

    for num1, num2 in string.gmatch(input, "(%d+)%s+(%d+)") do
        table.insert(left_col, num1)
        table.insert(right_col, num2)
    end

    table.sort(left_col)
    table.sort(right_col)

    for i = 1, #left_col do
        local distance = math.abs(left_col[i] - right_col[i])
        answer = answer + distance
    end

    return answer
end

function module.solution_2(input)
    local answer = 0
    local left_col = {}
    local right_col = {}

    for num1, num2 in string.gmatch(input, "(%d+)%s+(%d+)") do
        table.insert(left_col, num1)
        table.insert(right_col, num2)
    end

    for i = 1, #left_col do
        local current_number = left_col[i];
        local same_num_count = 0;

        for y = 1, #right_col do
            if current_number == right_col[y] then
                same_num_count = same_num_count + 1
            end
        end

        answer = answer + (current_number * same_num_count)
    end

    return answer
end

return module
