class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      #Sign the user in and redirecr to the user's show page
    else
      flash.now[:error] = 'Invalid email/password combination'# Not quite right!
      render 'new'
    end
  end

  def destroy
  end

end
