class Employee < ApplicationRecord
  has_many :work_shifts
  has_many :employee_rates
  has_many :expenses
  has_many :rates, through: :employee_rates
  accepts_nested_attributes_for :employee_rates, allow_destroy:true
end
