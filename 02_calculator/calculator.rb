#write your code here
def sum (nums)
    return nums.inject(0, :+)
end

def add (num1, num2)
    return sum([num1,num2])
end

def subtract(num1,num2)
    return num1-num2
end

def multiplies(nums)
    return nums.inject(1, :*)
end

def power(base_value,power_value)
    return base_value ** power_value 
end

def factorial(num)
    if (num == 0)
        return 1
    end
    return num.downto(1).inject(:*) 
end