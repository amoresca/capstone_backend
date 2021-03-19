class AddReadToBorrowRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :borrow_requests, :read, :boolean
  end
end
