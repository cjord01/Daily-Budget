class CreateExpenseCategories < ActiveRecord::Migration
  def change
    create_table :expense_categories do |t|
      t.string :title
      t.string :expense_type
      t.belongs_to :user

      t.timestamps
    end
  end
end
