#write your code here
def echo (param)
    return param
end

def shout(param)
    return param.upcase
end

def repeat(param, repeats = 2)
    return [param] * repeats * ' '
end

def start_of_word(param, position)
    return param[0..position-1]
end

def first_word(param)
    return param.split[0]
end

def titleize(param)
    exc = ["and","over", "the"]
    ret = param.split.map.with_index{|x,i| exc.include?(x) && i != 0  ? x : x.capitalize}*' '
    return ret
end