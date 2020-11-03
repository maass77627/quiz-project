class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end 

    def create
            @user = User.new(user_params)
            if @user.save
                render :json => @user
            else
                render :json => { :errors => @user.errors }, status: 400
            end
        end

        def update
            user = User.find(params[:id])
            user.update(score: params[:score])
            render json: user
        end

        def show
            user = User.find_by(id: params[:id])
            render json: user

        end
    
        private

        def user_params
        params.require(:user).permit(:username, :score)
        end
end
