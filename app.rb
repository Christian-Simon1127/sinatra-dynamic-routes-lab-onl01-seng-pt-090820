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
    @word1, @word2, @word3, @word4, @word5 = :word1, :word2, :word3, :word4, :word5
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  
  get '/:operation/:number1/:number2' do
    @operations = [1,2,3]
    "In progress"
  end
  
  
  
  
  
  
end