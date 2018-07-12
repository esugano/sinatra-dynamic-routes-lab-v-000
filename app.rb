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

  get '/say/:word1/:word2/:word3/:word4/:word5' do
   "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
  def math(:operation)
    num_1 = params[:number1].to_i
    num_2 = params[:number2].to_i
    num_1.send(:operation, b)
    end
  end

end
