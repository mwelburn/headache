class Quality < ActiveRecord::Base
  has_and_belongs_to_many :headaches

  validate :valid_description
  validates_presence_of :description
  validates_uniqueness_of :description

  attr_accessible :description, :is_active, :default
end
