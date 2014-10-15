class User < ActiveRecord::Base
	has_many :expense_categories
	has_many :daily_expenses
	has_many :monthly_expenses
	has_many :incomes

	has_secure_password
end
