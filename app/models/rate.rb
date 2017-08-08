class Rate < ApplicationRecord
  has_many :employee_rates
  has_many :work_shifts
end
