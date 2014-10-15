require 'date'

user = User.create(
	first_name: "Clayton", 
	last_name: "Jordan", 
	user_name: "clayjchicago", 
	password: "password", 
	password_confirmation: "password")

#Monthly
rent = ExpenseCategory.create(
	title: "Rent", 
	expense_type: "Monthly", 
	user_id: user.id)
cell_phone = ExpenseCategory.create(
	title: "Cell Phone", 
	expense_type: "Monthly", 
	user_id: user.id)
insurance = ExpenseCategory.create(
	title: "Insurance", 
	expense_type: "Monthly", 
	user_id: user.id)

MonthlyExpense.create(
	amount: 383,
	month: "October",
	user_id: user.id,
	expense_category_id: rent.id)
MonthlyExpense.create(
	amount: 383,
	month: "October",
	user_id: user.id,
	expense_category_id: cell_phone.id)
MonthlyExpense.create(
	amount: 383,
	month: "October",
	user_id: user.id,
	expense_category_id: insurance.id)
Income.create(
	income_type: "Monthly",
	amount: 1400,
	date: Date.today.month,
	user_id: user.id)

#Daily
food = ExpenseCategory.create(
	title: "Food", 
	expense_type: "Daily", 
	user_id: user.id)
transportation = ExpenseCategory.create(
	title: "Transportation", 
	expense_type: "Daily", 
	user_id: user.id)
needs = ExpenseCategory.create(
	title: "Needs", 
	expense_type: "Daily", 
	user_id: user.id)
entertainment = ExpenseCategory.create(
	title: "Entertainment", 
	expense_type: "Daily", 
	user_id: user.id)
DailyExpense.create(
	user_id: user.id,
	expense_category_id: food.id,
	amount: 15,
	date: Date.today - 5)
DailyExpense.create(
	user_id: user.id,
	expense_category_id: transportation.id,
	amount: 5,
	date: Date.today - 5)
DailyExpense.create(
	user_id: user.id,
	expense_category_id: food.id,
	amount: 10,
	date: Date.today - 4)
DailyExpense.create(
	user_id: user.id,
	expense_category_id: needs.id,
	amount: 10,
	date: Date.today - 4)
DailyExpense.create(
	user_id: user.id,
	expense_category_id: food.id,
	amount: 20,
	date: Date.today - 3)
DailyExpense.create(
	user_id: user.id,
	expense_category_id: entertainment,
	amount: 10,
	date: Date.today - 3)
DailyExpense.create(
	user_id: user.id,
	expense_category_id: food.id,
	amount: 10,
	date: Date.today - 2)
DailyExpense.create(
	user_id: user.id,
	expense_category_id: transportation.id,
	amount: 2,
	date: Date.today - 2)
DailyExpense.create(
	user_id: user.id,
	expense_category_id: food.id,
	amount: 10,
	date: Date.today - 1)
DailyExpense.create(
	user_id: user.id,
	expense_category_id: transportation.id,
	amount: 5,
	date: Date.today)
DailyExpense.create(
	user_id: user.id,
	expense_category_id: food.id,
	amount: 10,
	date: Date.today)

