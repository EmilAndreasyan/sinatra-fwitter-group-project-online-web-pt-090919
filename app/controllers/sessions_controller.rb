class SessionsController < ApplicationController
  get '/login' do 
    user = User.find_by(email: params[:user][:email])
    if params[:user][:email].empty? || params[:user][:password].empty?
      @error = "Email and password fields cannot be blank*"
      erb :'users/login' 
    elsif user && user.authenticate(params[:user][:password])
    user.save
    session[:user_id] = user.id
    redirect "/users/#{user.id}/index"
  end
  
  post '/logout' do
    
  end
end