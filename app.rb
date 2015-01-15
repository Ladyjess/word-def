require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/word')



get('/') do
  @words = Word.all()
  erb(:index)
end


post('/word') do
  term = params.fetch('term')
  definition = params.fetch('definition')
  word = Word.new("term, definition")
  word.save()
  erb(:success)
end

get('/success') do
  @word
end

  # term = params.fetch('term')
  # definition = params.fetch('definition')
  # word = Word.new("term, definition")
  # word.save()
  # erb(:success)
  #end
