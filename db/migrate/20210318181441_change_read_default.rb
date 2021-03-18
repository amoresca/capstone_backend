class ChangeReadDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :borrow_requests, :read, false
  end
end
