require 'spec_helper'

describe Treatment do
  before(:each) do
    @attr = {
      :description => "Advil"
    }
  end

  it "should create a new instance given a valid attribute if the cause string doesn't already exist'" do
    valid_treatment = Treatment.create!(@attr)
    valid_treatment.should be_valid
  end

  it "should not create a new instance given a valid attribute if the cause string already exists'" do
    initial_treatment = Treatment.create!(@attr)
    repeat_treatment = Location.new(@attr)
    repeat_treatment.should_not be_valid
  end

  it "should reject blank description" do
    invalid_treatment = Treatment.new(@attr.merge(:description => ""))
    invalid_treatment.should_not be_valid
  end

  it "should accept valid values" do
    descriptions = %w[Advil Rest Sleep]
    descriptions.each do |description|
      invalid_treatment = Treatment.new(@attr.merge(:description => description))
      invalid_treatment.should be_valid
    end
  end

  it "should reject invalid values without a string" do
    pending("Implement this")
  end

  it "should reject too many characters" do
    pending("Implement this")
  end
end
