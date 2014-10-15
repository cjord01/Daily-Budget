class CreateMonthlyExpenses < ActiveRecord::Migration
  def change
    create_table :monthly_expenses do |t|
      t.integer :amount
      t.string :month
      t.belongs_to :user
      t.belongs_to :expense_category

      t.timestamps
    end
  end
end
