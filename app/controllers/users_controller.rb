class UsersController < ApplicationController

  # GET /users/new
  def new_user
  end

  # POST /users/create
  def create_user
    # TODO: Check for how to send the password thru params hash.
    @user = User.new(username:           params[:username],
                     first_name:         params[:first_name],
                     last_name:          params[:last_name],
                     email:              params[:email],
                     encrypted_password: params[:encrypted_password])

    # TODO: Verify user fields
    if @user.save
      redirect_to show_user_path(@user)
    else
      # TODO: If do not save user, redirect to an error page.
      redirect_to root_path
    end
  end

  # GET /users/:id/edit
  def edit_user
    # TODO: Check if the user is logged into its own account, or if the user
    # has admin privileges.
    @user = User.find(params[:id])
  end

  # POST /users/:id/update
  def update_user
    # TODO: Check if the user is logged into its own account.
    @user = User.find(params[:id])

    # TODO: Verify user fields
    if @user.update(params)
      redirect_to show_user_path(@user)
    else
      # TODO: If do not save user, redirect to an error page.
      redirect_to root_path
  end

  # GET /users/:id
  def show_user
    # TODO: Check if the user is logged into its own account or if it has admin
    # privileges.
    @user = User.find(params[:id])
  end

  # GET /users
  # TODO: this controller must have admin privileges.
  def show_all_users
    @users = User.all
  end

  # DELETE /users/:id
  # TODO: this controller must have admin privileges.
  def delete_user
    @user = User.find(params[:id])

    if @user.destroy
      redirect_to show_all_users
  end

end
