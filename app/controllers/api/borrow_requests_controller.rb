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
      ActionCable.server.broadcast "requests_channel", {
        id: @borrow_request.id,
        read: @borrow_request.read,
        created_at: @borrow_request.created_at,
        requestor: {
          id: @borrow_request.requestor.id,
          first_name: @borrow_request.requestor.first_name,
          last_name: @borrow_request.requestor.last_name,
        },
        requestee_username: @borrow_request.item.user.username,
        item: {
          id: @borrow_request.item.id,
          name: @borrow_request.item.name,
          available: @borrow_request.item.available
        }
      }  
      render "show.json.jb"
    else
      render json: { errors: @borrow_request.errors.full_messages }
    end
  end

  def update
    @borrow_request = BorrowRequest.find(params[:id])

    if current_user == @borrow_request.item.user

      @borrow_request.status = params[:status] || @borrow_request.status
      @borrow_request.read = params[:read] || @borrow_request.read

      if @borrow_request.save 
        if @borrow_request.status == "accepted"
          @borrow_request.item.available = false
          @borrow_request.item.save
        elsif @borrow_request.status == "returned"
          @borrow_request.item.available = true
          @borrow_request.item.save
        end
        render "show.json.jb"
      else
        render json: { errors: @borrow_request.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: {}, status: :unauthorized
    end
  end

  def destroy
    @borrow_request = BorrowRequest.find(params[:id])
    if current_user == @borrow_request.item.user
      @borrow_request.destroy
      render json: { message: "Borrow request successfully deleted" }
    else
      render json: {}, status: :unauthorized
    end
  end
end
