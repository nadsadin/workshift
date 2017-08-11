json.extract! expense, :id, :employee_id, :date, :amount, :memo, :created_at, :updated_at
json.url expense_url(expense, format: :json)
