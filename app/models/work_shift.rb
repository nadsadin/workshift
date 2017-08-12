class WorkShift < ApplicationRecord
  belongs_to :employee, inverse_of: :work_shifts
  belongs_to :rate, inverse_of: :work_shifts
  belongs_to :location, inverse_of: :work_shifts


  before_save do
    self.min = ((self.end_time-self.start_time)/60).to_i
    self.cost = ((self.rate.rate.to_f)/60*self.min).to_d
  end
end
