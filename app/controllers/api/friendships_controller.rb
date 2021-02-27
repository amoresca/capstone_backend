class Api::FriendshipsController < ApplicationController
  
  before_action :authenticate_user
  
  def index
    @friends = current_user.friends
    render "index.json.jb"
  end

  def create
    @friendship = Friendship.new(
      requestor_id: current_user.id,
      requestee_id: params[:requestee_id],
      status: "pending"
    )
    if @friendship.save
      render "show.json.jb"
    else
      render json: { errors: @friendship.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @friendship = Friendship.find(params[:id])
    if current_user == @friendship.requestee
      @friendship.status = params[:status] || @friendship.status
      if @friendship.save 
        render json: { message: "Friend request #{@friendship.status}."}
      else
        render json: { errors: @friendship.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: {}, status: :unauthorized
    end
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    if current_user == @friendship.requestor || current_user == @friendship.requestee
      @friendship.destroy
      render json: { message: "Friendship successfully deleted " }
    else
      render json: {}, status: :unauthorized
    end
  end
end
