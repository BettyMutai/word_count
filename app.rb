require('sinatra')
  require('sinatra/reloader')
  require('./lib/word_count')
  also_reload('lib/**/*.rb')

get("/") do
  erb(:form)
end

post('/') do
  word = params.fetch('word')
  sentence = params.fetch('sentence')
  @totalcount = sentence.word_count(word)
  erb(:form)
end

# get('/results') do
#   word = params.fetch('word')
#   sentence = params.fetch('sentence')
#   @totalcount = sentence.word_count(word)
#   erb(:results)
# end
