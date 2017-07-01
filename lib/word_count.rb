class String
  define_method(:word_count) do |sentence,scope|
    if scope=="Local"
      (sentence.downcase.split(" ").select { |i| i.include?self.downcase}).length
    else
     sentence.downcase.scan(/(#{self.downcase})/).count
     end
   end
 end
