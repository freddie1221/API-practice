class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    json_response(@user, :created)
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
  # neat so this just returns the :user hash (and whatever is permitted within that)

  def json_response(object, status = :ok)
    render json: object, status: status
  end
end

