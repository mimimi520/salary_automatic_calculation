class AddUserIdToSalaries < ActiveRecord::Migration[6.1]
  def change
    add_column :salaries, :user_id, :integer
  end
end
