require 'sinatra'
$contador = 0

get '/' do
  erb :index
end

post '/resultado' do
  @frase = params[:frase]
  erb :resultado
end
