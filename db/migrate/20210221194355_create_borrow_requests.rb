class CreateBorrowRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :borrow_requests do |t|
      t.integer :requestor_id
      t.integer :item_id
      t.string :status

      t.timestamps
    end
  end
end
