class Employee < ApplicationRecord
  has_many :work_shifts, inverse_of: :employee
  has_many :employee_rates, inverse_of: :employee
  has_many :expenses, inverse_of: :employee
  has_many :rates, through: :employee_rates
  accepts_nested_attributes_for :employee_rates, allow_destroy:true
end
