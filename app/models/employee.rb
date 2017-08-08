class Employee < ApplicationRecord
  has_many :work_shifts
  has_many :employee_rates
  has_many :rates, through: :employee_rates

end
