class Rider < ActiveRecord::Base
  has_many :rides
  def full_name
    "#{first_name} #{last_name}"
  end
end

