require_relative 'config/environment'

class App < Sinatra::Base

  # get '/' do
  #
  # end
  # This is sa sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do
     @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do
     @product = params[:num1].to_i * params[:num2].to_i
     "#{@product}"
  end

end


## dynamic routes_routes -->
#that are created based on attributes within the url of the request
