class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to @user
        else
            render :new
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy

        redirect_to root_path
    end

    private

    def user_params
        params.require(:user).permit(:name,:last_name,:dob,:gender,:address,:pin,:contact_no,:email,:email_confirmation,:company_name,:joining_date,:job_location)
    end
end