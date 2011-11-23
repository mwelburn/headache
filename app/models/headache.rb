class Headache < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :causes
  has_and_belongs_to_many :locations
  has_and_belongs_to_many :treatments
  
  validates_presence_of :user_id, :intensity

  validates :intensity, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 10}

  attr_accessible :onset_time, :length, :intensity, :similar_episodes, :notes, :is_active

  def add_cause(cause)
    if !self.causes.find(cause)
      self.causes << cause
    end
  end

  def remove_cause(cause)
     self.causes.delete(cause)
  end
end
