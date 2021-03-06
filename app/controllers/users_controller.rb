class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(user_params)
     if user.save
       render json: user
     else
       render json: user.errors.full_messages, status: :unprocessable_entity
     end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def edit
  end

  def update
    user = User.find(params[:id])
    # p params
    # user.update(:id, :name => params[:name], :email => params[:email])
    user.update(user_params)

    if user.save
      render json: user

    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find(params[:id])

    user.destroy

    render json: user
  end

private
  def user_params
    params.require(:user).permit(:username)
  end


end
