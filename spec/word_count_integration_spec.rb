require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the word count path', {:type => :feature}) do
    it("processes the user sentence and returns the frequency of the word count") do
      visit '/'
      fill_in('word', :with => 'dog')
      fill_in('sentence', :with => 'my dog is a dog')
      click_button('Go!')
      expect(page.find('#results')).to have_content('Output:2')
    end
  end
