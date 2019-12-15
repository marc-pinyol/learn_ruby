#write your code here
def translate(param)
    param.split.map{|x|translate_word(x)}.join(' ')

end

def translate_word(param)
    vowels = ["a","e","i","o","u"]
    append = "ay"

    if (vowels.include?(param[0]))
        return param+append
    
    elsif(param.start_with?("qu"))
        return param[2..-1]+param[0..1]+append
    
        # starts with 3 consonants
    elsif (!vowels.include?(param[0]) && !vowels.include?(param[1]) && !vowels.include?(param[2]))
        return param[3..-1]+param[0..2]+append
    
        # starts with consonants + "qu" (square)
    elsif (param[1..-1].start_with?("qu"))
        return  param[3..-1]+param[0..2]+append
    
        # starts with 2 consonants
    elsif (!vowels.include?(param[0]) && !vowels.include?(param[1]))
        return param[2..-1]+param[0..1]+append

    # starts with 1 consonants
    else
        # aux =param[1..-1]
        # return aux
        # # if (aux.start_with?("qu"))
        # #     return  "kk"#param[3..-1]+param[0..2]+append
        # # else
            return param[1..-1]+param[0]+append
        # end
    end
end