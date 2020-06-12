class SessionsController < ApplicationController
  get '/login' do 
    user = User.find_by(email: params[:user][:email])
  end
  
  post '/logout' do
    
  end
end