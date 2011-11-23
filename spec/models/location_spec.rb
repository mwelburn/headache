require 'spec_helper'

describe Location do
  before(:each) do
    @attr = {
      :description => "Front"
    }
  end

  it "should create a new instance given a valid attribute if the cause string doesn't already exist'" do
    valid_location = Location.create!(@attr)
    valid_location.should be_valid
  end

  it "should not create a new instance given a valid attribute if the cause string already exists'" do
    initial_location = Location.create!(@attr)
    repeat_location = Location.new(@attr)
    repeat_location.should_not be_valid
  end

  it "should reject blank description" do
    invalid_location = Location.new(@attr.merge(:description => ""))
    invalid_location.should_not be_valid
  end

  it "should accept valid values" do
    descriptions = %w[Top Back Front Left Right]
    descriptions.each do |description|
      invalid_location = Location.new(@attr.merge(:description => description))
      invalid_location.should be_valid
    end
  end

  it "should reject invalid values without a string" do
    descriptions = %w[1 . + % $ # Foot]
    descriptions.each do |description|
      invalid_location = Location.new(@attr.merge(:description => description))
      invalid_location.should_not be_valid
    end
  end

  it "should reject too many characters" do
    pending("Implement this")
  end
end
