class DailyExpense < ActiveRecord::Base
	belongs_to :user
	belongs_to :expense_category
end
