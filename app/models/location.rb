class Location < ApplicationRecord
  has_ancestry
  has_many :work_shifts
end
