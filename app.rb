require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

    get '/reversename/:name' do
      @user_name = params[:name].reverse
      "#{@user_name}"
    end

    get '/square/:number' do
      sq_num = params[:number].to_i * params[:number].to_i
      "#{sq_num}"
    end

    get '/say/:number/:phrase' do
      answer = ''

      params[:number].to_i.times do
        answer += params[:phrase]
      end

      answer
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      answer = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
      answer
    end

    get '/:operation/:number1/:number2' do
      if params[:operation] == "add"
        total = params[:number1].to_i + params[:number2].to_i
      elsif params[:operation] == "subtract"
        total = params[:number1].to_i - params[:number2].to_i
      elsif params[:operation] == "multiply"
        total = params[:number1].to_i * params[:number2].to_i
      else
        total = params[:number1].to_i / params[:number2].to_i
      end
      total.to_s
    end

end