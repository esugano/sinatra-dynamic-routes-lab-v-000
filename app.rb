require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
   @num = params[:number]
   @phrase = params[:phrase]
   @num.times do |@phrase|
     puts @phrase
   end

  end

end
