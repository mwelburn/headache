class Headache < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user_id, :intensity

  validates :intensity, :numericality => { :only_integer => true, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 10}
end
