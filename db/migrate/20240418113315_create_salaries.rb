class CreateSalaries < ActiveRecord::Migration[6.1]
  def change
    create_table :salaries do |t|
      
      t.date :date
      t.integer :salary_amount
      t.integer :transportation_expenses
      
      t.timestamps
    end
  end
end
