require 'sinatra'
$contador = 0

get '/' do
  @contador = $contador
  erb :index
end

post '/' do
  $contador += 1
  redirect '/'
end
