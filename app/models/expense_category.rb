class ExpenseCategory < ActiveRecord::Base
	belongs_to :user
	has_many :daily_expenses
	has_many :monthly_expenses
end
