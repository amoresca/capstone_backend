class Api::UsersController < ApplicationController

  before_action :authenticate_user, except: [:create]

  def index
    @users = User.all
    render "index.json.jb"
  end

  def create
    @user = User.new(
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      username: params[:username],
      first_name: params[:first_name],
      last_name: params[:last_name],
      image_url: params[:image_url]
    )
    if @user.save
      render "show.json.jb", status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @user = User.find_by(username: params[:username])
    @borrowed_items = BorrowRequest.where("requestor_id = ?", current_user.id)
    render "show.json.jb"
  end

  def update
    @user = User.find_by(username: params[:username])

    if current_user == @user
      if params[:password]
        @user.password = params[:password]
        @user.password_confirmation = params[:password_confirmation]
      end
      @user.email = params[:email] || @user.email
      @user.first_name = params[:first_name] || @user.first_name
      @user.last_name = params[:last_name] || @user.last_name
      @user.image_url = params[:image_url] || @user.image_url

      if @user.save
        render "update.json.jb"
      else
        render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: {}, status: :unauthorized
    end
  end

  def destroy
    @user = User.find_by(username: params[:username])
    if current_user == @user
      @user.destroy
      all_friendships = Friendship.where("requestee_id = ? OR requestor_id = ?", @user.id, @user.id)
      all_friendships.destroy_all
      render json: { message: "User successfully deleted." }
    else
      render json: {}, status: :unauthorized
    end
  end

end
