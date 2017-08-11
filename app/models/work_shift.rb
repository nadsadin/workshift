class WorkShift < ApplicationRecord
  belongs_to :employee
  belongs_to :rate
  belongs_to :location


  before_save do
    self.min = ((self.end_time-self.start_time)/60).to_i
    self.cost = ((self.rate.rate.to_f)/60*self.min).to_d
  end
end
