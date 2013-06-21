class Company < ActiveRecord::Base

  validates :email, presence: true

end
