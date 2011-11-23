class Treatment < ActiveRecord::Base
  has_and_belongs_to_many :headaches

  validates_presence_of :description
  validates_uniqueness_of :description

  attr_accessible :description, :is_active
end
