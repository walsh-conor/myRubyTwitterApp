class UsersController < ApplicationController

      def show
        @user = User.find(params[:id])
		@microposts = @user.microposts   
      end
      def new
        @user = User.new
      end
	 def create
        secure_params = params.require(:user).permit(:name, :email, 
                                  :password, :password_confirmation)
        @user = User.new(secure_params)
        if @user.save
           # Handle a successful save.
		   remember @user 
		    flash[:success] = "Welcome to the Conor's Twitter App!"
		    redirect_to @user
        else
            # Handle an unsuccessful save.
            render 'new'			
        end
      end
 end