class Api::ItemsController < ApplicationController

  before_action :authenticate_user

  def index
    friends = current_user.friends
    @items = []
    friends.each do |friend|
      @items += friend.items
    end
    render "index.json.jb"
  end

  def create
    @item = Item.new(
      name: params[:name],
      user_id: current_user.id,
      image_url: params[:image_url],
      category_id: params[:category_id],
      available: true
    )
    if @item.save
      render "show.json.jb"
    else
      render json: { errors: @item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @item = Item.find(params[:id])
    if current_user.id == @item.user_id
      @item.name = params[:name] || @item.name
      @item.image_url = params[:image_url] || @item.image_url
      @item.category_id = params[:category_id] || @item.category_id
      @item.available = params[:available] || @item.available

      if @item.save
        render "show.json.jb"
      else
        render json: { errors: @item.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: {}, status: :unauthorized
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if current_user.id == @item.user_id
      @item.destroy
      render json: { message: "Item successfully deleted "}
    else
      render json: {}, status: :unauthorized
    end
  end

end
