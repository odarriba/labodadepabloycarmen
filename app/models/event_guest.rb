class EventGuest < ActiveRecord::Base
  validates :name, :email, presence: true
end
