class CreateDailyExpenses < ActiveRecord::Migration
  def change
    create_table :daily_expenses do |t|
      t.integer :amount
      t.date :date
      t.belongs_to :user
      t.belongs_to :expense_category

      t.timestamps
    end
  end
end
