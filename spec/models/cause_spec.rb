require 'spec_helper'

describe Cause do

  before(:each) do
    @attr = {
      :description => "Hunger"
    }
  end

  it "should create a new instance given a valid attribute if the cause string doesn't already exist'" do
    valid_cause = Cause.create!(@attr)
    valid_cause.should be_valid
  end

  it "should not create a new instance given a valid attribute if the cause string already exists'" do
    initial_cause = Cause.create!(@attr)
    repeat_cause = Cause.new(@attr)
    repeat_cause.should_not be_valid
  end

  it "should reject blank description" do
    invalid_cause = Cause.new(@attr.merge(:description => ""))
    invalid_cause.should_not be_valid
  end

  it "should accept valid values" do
    descriptions = %w[Stress Illness]
    descriptions.each do |description|
      invalid_cause = Cause.new(@attr.merge(:description => description))
      invalid_cause.should be_valid
    end
  end

  it "should reject invalid values without a string" do
    descriptions = %w[1 . + % $ #]
    descriptions.each do |description|
      invalid_cause = Cause.new(@attr.merge(:description => description))
      invalid_cause.should_not be_valid
    end
  end

  it "should reject too many characters" do
    pending("Implement this")
  end

end
