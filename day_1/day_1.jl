"""
Advent of Code Day 1 Solution
"""

# move to working directory
cd("./Documents/Github/advent-of-code-2020/day_1")

# PART 1
# Find the two numbers in an array that add to 2020
# And report the product/

# Get input data
expenses = readlines("day_1_input.txt")

# convert to integers
expenses = [parse(Int, x) for x in expenses]

# we are looking for values in the array that add to 2020
# first find all differences
differences = [2020 - x for x in expenses]

# there is only one solution according to the problem
# So the solution must be the intersection between the original values
# And the difference of each value by 2020
solution = intersect(expenses, differences)

# print the product of both values
print("First Solution: \n")
print(prod(solution))
print("\n")

# PART 2
# In part 2 - the goal is to find three numbers that add to 2020
# And report the product

# Here we will adapt the above method to find a third number
# the pointer method is more efficient but I find this easier to implement

for exp in expenses
    sub_sum = 2020 - exp
    sub_differences =[sub_sum - x for x in expenses]
    sub_solution = intersect(expenses, sub_differences)
    if exp + sum(sub_solution) == 2020
        print("Second Solution: \n")
        print(exp * prod(sub_solution))
        break
    else
        continue
    end
end
