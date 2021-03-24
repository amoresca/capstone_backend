class Api::CategoriesController < ApplicationController

  before_action :authenticate_user
  
  def index
    @categories = Category.all.order("name")
    render "index.json.jb"
  end
end
