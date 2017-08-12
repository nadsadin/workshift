class Expense < ApplicationRecord
  belongs_to :employee, inverse_of: :expenses
end
