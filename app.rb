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
    @say = ""
    @times = params[:number].to_i
    @times.times do 
      @say += " " + params[:phrase]
    end
    "#{@say}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @say = ""
    params.each do |word|
      @say += word + " "
    end 
    "#{@say}"
  end
  
  get '/:operation/:number1/:number2' do
    
  end
  
  
  
  
  
  
end