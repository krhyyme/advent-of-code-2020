"""
Advent of Code Day 2 Solution
"""

# move to working directory
cd("./Documents/Github/advent-of-code-2020/day_2")

# PART 1
# Find all passwords that meet password policy in text file
# And report total number of qualified passwords
# do this line by line
# We want make sure the count of a specific character is within
# a dictated max and min bound or at dictated indexes


met_policy = 0
met_second_policy = 0
for line in eachline("day_2_input.txt")
    check_array = [split(substr,"-") for substr in split(line, " ")]
    min_max = [parse(Int, x) for x in check_array[1]]
    pswd = check_array[3][1]
    check_char =check_array[2][1][1]
    cnt = count(i->(i==check_char), pswd)
    if (min_max[1] <= cnt) && (min_max[2] >= cnt)
        met_policy += 1
    end
    if (pswd[min_max[1]] == check_char) ⊻ (pswd[min_max[2]] == check_char)
        met_second_policy += 1
    end
end
println("Passwords that met first policy: ", met_policy)
println("Passwords that met second policy: ", met_second_policy)
