class Api::BorrowRequestsController < ApplicationController

  before_action :authenticate_user

  def index
    pending_requests = BorrowRequest.where("status = ?", "pending")
    @borrow_requests = pending_requests.select do |request| 
      current_user.items.include?(request.item)
    end
    @friend_requests = current_user.pending_friendships
    render "index.json.jb"
  end

  def create
    @borrow_request = BorrowRequest.new(
      requestor_id: current_user.id,
      item_id: params[:item_id],
      status: "pending"
    )
    if @borrow_request.save
      render "show.json.jb"
    else
      render json: { errors: @borrow_request.errors.full_messages }
    end
  end

  def update
    @borrow_request = BorrowRequest.find(params[:id])
  end
end
