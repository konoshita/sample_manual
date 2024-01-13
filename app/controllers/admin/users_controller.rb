class Admin::UsersController < Admin::BaseController
    
    def index
        @users = User.all
    end
    
    def show; end

    def edit; end

    def update
        if @user.update(user_params)
            redirect_to admin_user_path(@user), success: t('defaults.message.updated', item: User.model_name.human)
        else
            flash.now[:danger] = t('defaults.message.not_updated', item: User.model_name.human)
            render :edit
        end
    end

    def destroy!
        @user.destroy!
        redirect_to admin_users_path, succecc: t('defaults.message.deleted', item: User.model_name.human)
    end

    private

    def set_user
        @user = User.find(params[:id])
    end
    
    def user_params
        params.require(:user).permit(:email, :last_name, :first_name, :avatar, :avatar_cache, :role)
    end
end
