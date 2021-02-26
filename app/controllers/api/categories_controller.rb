class Api::CategoriesController < ApplicationController

  before_action :authenticate_user
  
  def index
    @categories = Category.all
    render "index.json.jb"
  end
end
