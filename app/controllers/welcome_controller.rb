class WelcomeController < ApplicationController
  def home
  end
  
  def about
    
  end
  
  def login
    #redirect_to new_customer_path
    #render plain: params
    session[:login_id]=nil
    if (params[:user_name]=='test' && params[:password]=='test1')
      session[:login_id]=true
    else
              flash.now[:notice]="Invalid User Name or Password"
              render 'home'
    end  
    
    
  end  
  
end