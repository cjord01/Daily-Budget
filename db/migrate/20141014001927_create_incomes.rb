class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.string :income_type
      t.integer :amount
      t.date :date
      t.belongs_to :user

      t.timestamps
    end
  end
end
