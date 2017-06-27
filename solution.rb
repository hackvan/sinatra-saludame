require 'sinatra'
get '/' do
  unless nombre = params[:nombre]
    nombre = "desconocido"
  end
  "<h1>Hola #{nombre}</h1>"
end
