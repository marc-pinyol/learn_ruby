class Book
    def initialize()
        @exc = ["the", "a", "an", "and", "in", "of"]
    end
    
    def title #getter method
        ret = @title.split.map.with_index{|x,i| @exc.include?(x) && i != 0  ? x : x.capitalize}*' '
        return ret
    end

    def title=(title) #setter method
        @title = title
    end
end
