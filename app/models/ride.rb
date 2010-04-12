class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :trail
  validates_presence_of :user
end
