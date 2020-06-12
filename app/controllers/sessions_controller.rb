class SessionsController < ApplicationController
  get '/login' do 
    user = User.find
  end
  
  post '/logout' do
    
  end
end