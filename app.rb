require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
   @num = params[:number].to_i
   @phrase = params[:phrase]
   @output = ""
   @num.times do
      @output += "#{@phrase}\n"
    end
    @output
  end


end
