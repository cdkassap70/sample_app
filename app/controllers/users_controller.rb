class UsersController < ApplicationController
  def show
	@user = User.find(params[:id])
	@title = @user.name
  end

  def new
	@user = User.new
	@title = "Sign up"
  end
  
  def create
	@user = User.new(params[:user], :without_protection => true) #Need to find a workaround for mass assignment problem here
	#@user = User.new(:name => params[:id]
	if @user.save #if this returns true
		sign_in @user
		flash[:success] = "Welcome to the Sample App!"
		redirect_to @user
	else
		@title = "Sign up"
		render 'new'
	end
  end
end
