require('sinatra')
  require('sinatra/reloader')

get('/') do
  "<!DOCTYPE html>
  <html>
    <head>
      <title>Word Count</title>
       <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
    </head>
    <body>
      <h1>Word Count</h1>
      <h3>This is a website that uses a method to return how frequently a word appears in a given string</h3>
      <div class="form-group">
      <label for="word">Your word</label>
      <input id="word" name="ord" class="form-control" type="text">
    </div>
    <div class="form-group">
      <label for="sentence">Your sentence</label>
      <input id="sentence" name="sentence" class="form-control" type="text">
    </div>
    <button type="submit" class="btn">Go!</button>
    </body>
  "
end
