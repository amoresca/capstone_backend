class Api::TagsController < ApplicationController

  before_action :authenticate_user
  
  def index
    @tags = Tag.all
    render "index.json.jb"
  end

  def create
    @tag = Tag.new(name: params[:name])
    if @tag.save
      render "show.json.jb"
    else
      render json: { errors: @tag.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
