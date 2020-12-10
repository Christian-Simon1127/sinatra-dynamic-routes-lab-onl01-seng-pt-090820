require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end
  
  get '/square/:number' do 
    @squared = params[:number].to_i ** 2
    "#{@squared}"
  end
  
  get '/say/:number/:phrase' do 
    @say = params[:phrase]
    @times = params[:number].to_i
    (@times - 1).times do 
      @say += " " + params[:phrase]
    end
    "#{@say}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @say = ""
    params.each do |key, value|
      @say += value + " "
    end
    "#{@say[0, @say.length-1]}."
  end
  
  get '/:operation/:number1/:number2' do
    @operator = params[:operation]
    @number1, @number2 = params[:number1].to_i, params[:number2].to_i
    if @operator == 'add'
      "#{@number1 + @number2}"
    elsif @operator == 'subtract'
      "#{@number1 - @number2}"
    elsif @operator == 'multiply'
      "#{@number1 * @number2}"
    else
      "#{@number1 / @number2}"
    end
  end
  
  
  
  
  
  
end