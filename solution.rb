require 'sinatra'

get '/' do
  erb :index
end

post '/saludar' do
  @nombre = params[:nombre]
  @nombre = "desconocido" if @nombre.empty?
  erb :saludar
end

get '/makers/:nombre' do
  "<h1>Hola #{params[:nombre].capitalize}!</h1>"
end
