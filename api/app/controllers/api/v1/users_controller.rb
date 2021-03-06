class Api::V1::UsersController < Api::V1::ApiController
    before_action :set_user, only: [:show, :update, :destroy]

    def index
        @user = User.all
        render json: @user
    end

    def show

    end

    def create

    end

    def update

    end

    def destroy
        
    end

    private 
        def set_user
            @ong = User.find(params[:id])
        end

        def user_params
            params.require(:user).permit(:name, :email, :phone, :password)
        end

end