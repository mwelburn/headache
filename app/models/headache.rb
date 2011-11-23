class Headache < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :causes
  
  validates_presence_of :user_id, :intensity

  validates :intensity, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 10}

  def add_cause(cause)
    if !self.contains_cause(cause)
      self.causes << cause
    end
  end

  def contains_cause(cause)
    self.causes.each do |my_cause|
      if my_cause.description == cause.description
        # Already have this cause
        return true
      end
    end
  end

  def remove_cause(cause)

  end
end
