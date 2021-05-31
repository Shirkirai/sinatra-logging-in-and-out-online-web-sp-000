require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    #use find_by allows me to search for attributes while the "find" method only allows finding by id.
      @user = User.find_by(:username => params[:username])
      if @user
          session[:username] = @user.id
          redirect to '/account'
        else
          erb :error
      end
  end

  get '/account' do
      erb :account
  end

  get '/logout' do

  end


end
