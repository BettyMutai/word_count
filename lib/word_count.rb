class String
  define_method(:word_count) do |word|
    my_count = 0
    self.split(" ").each do |item|
      if(word == item)
        my_count = my_count+1
      else
        #word did match my search word
      end
    end
    my_count
  end
end
