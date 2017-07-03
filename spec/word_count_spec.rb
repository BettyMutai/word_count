require('rspec')
  require('word_count')

  describe('word_count')do
    it("should count how many times a word appears") do
      expect("bee bee bee".word_count("bee")).to(eq(3))
    end
    it("should account for case sensitivity and punctuation when counting") do
      expect("Hello!!??".word_count("hello")).to(eq(0))
    end
  end
