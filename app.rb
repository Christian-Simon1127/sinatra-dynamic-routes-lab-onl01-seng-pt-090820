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
    @times.times do 
      @say += " " + params[:phrase]
    end
    "#{@say}"
  end
  
  get '/' do 
    
  end
  
  
  
  
end