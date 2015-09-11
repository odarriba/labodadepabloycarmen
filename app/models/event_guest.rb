class EventGuest < ActiveRecord::Base
  validates :name, :email, presence: true
  validates :email, :email => true
end
