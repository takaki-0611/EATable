class Public::UsersController < ApplicationController
  def show
  end
  def edit
  end
  def update
  end
  def quit
  end
  def out
    @user = current_user
    @user.update(is_deleted: true)
    reset_session
    flash[:notice] = "ありがとうございました。またのご利用を心よりお待ちしております。"
    redirect_to root_path
  end
  
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :kana_first_name, :kana_last_name, :phone_number, :email, :postal_code, :address)
  end
end
