class SessionsController < ApplicationController
  get '/login' do 
    user = User.find_by(email: params[:user][:email])
    if params[:user][:email].empty? || params[:user][:password].empty?
      @error = "Email and password fields cannot be blank*"
      erb :'users/login' 
    
  end
  
  post '/logout' do
    
  end
end