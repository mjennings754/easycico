class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    if params[:organization_id]
      @organization = Organization.find(params[:organization_id])
      @user = @organization.users.build(user_params)
    else
      @user = User.new(user_params)
    end
    if @user.save
      if @organization
        redirect_to @organization
      else
      redirect_to @user
      end
    else
      render :new
    end
  end


  def edit
  end

  def show
  end

  private

  def user_params
    params.expect(user: [:username, :email, :password, :password_confirmation, :name])
  end
end
