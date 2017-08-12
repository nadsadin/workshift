class EmployeeRate < ApplicationRecord
  belongs_to :employee, inverse_of: :employee_rates
  belongs_to :rate, inverse_of: :employee_rates
end
