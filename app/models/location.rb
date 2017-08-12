class Location < ApplicationRecord
  has_many :work_shifts, inverse_of: :location
end
