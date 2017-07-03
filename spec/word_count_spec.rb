require('rspec')
  require('word_count')

  describe('word_count')do
    it("should count how many times a word appears") do
      expect("peck".word_count("If Peter Piper picked a peck of pickled peppers, where’s the peck of pickled peppers Peter Piper picked?")).to(eq(2))
    end
  end
