class Cause < ActiveRecord::Base
  has_and_belongs_to_many :headaches

  validate :valid_description
  validates_presence_of :description
  validates_uniqueness_of :description

  def valid_description
    has_one_letter = self.description =~ /[a-zA-Z]/
    errors.add(:description, "must have at least one letter") unless (has_one_letter)
  end
end
