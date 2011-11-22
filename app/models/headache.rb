class Headache < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :causes
  
  validates_presence_of :user_id, :intensity

  validates :intensity, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 10}

  def add_cause(cause)
    if existing_cause = Cause.find_all_by_description(cause.description)
      if self.causes.nil? or !self.causes.exists? existing_cause
        self.causes << existing_cause
      end
    else
      if self.causes.nil? or !self.causes.exists? cause
        self.causes << cause
      end
    end
  end

  def remove_cause(cause)

  end
end
