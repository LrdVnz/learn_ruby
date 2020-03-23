def echo word
    word
end

def shout word
    word.upcase
end

def repeat word, n = 2
    word = word + " "
    word =  word * n
    word = word.chop
end

def start_of_word word , n 
    n = n - 1
    word.slice(0..n)
end

def first_word word 
   pos =  word.index(" ")
   word.slice(0..pos - 1)
end

def titleize sentence
  stop_words = %w{a an and the or for of nor over} 
   sentence.split.each_with_index.map{|word, index|
   stop_words.include?(word) && index > 0 ? word : word.capitalize
   }.join(" ")
end


