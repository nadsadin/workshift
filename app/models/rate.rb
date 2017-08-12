class Rate < ApplicationRecord
  has_many :employee_rates, inverse_of: :rate
  has_many :work_shifts, inverse_of: :rate
end
