class Book
    def initialize
        @title = title 
    end

    def title
        @title
    end

    def title=(title)
        @title = title
        words = title.split(' ')
        conj = ["and", "in", "the", "of", "a", "an"]
        result = []
        words.each_with_index do |word, index|
            if conj.include? word 
                if index > 0 
                result.push(word)
                else 
                cap =  word.capitalize
                 result.push(cap)
                end
            else
            cap =  word.capitalize
             result.push(cap)
            end
         end
        @title = result.join(' ')
    end
end

