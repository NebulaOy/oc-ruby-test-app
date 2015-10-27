require 'bundler/setup'
require 'sinatra'
require 'socket'

set :bind, '0.0.0.0'
set :port, 8080

get '/' do
   erb :main, :locals => {:node => Socket.gethostname, :proxy => request.ip}
end
