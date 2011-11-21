require 'spec_helper'

describe Headache do

  before(:each) do
    @user_attr = {
      :name => "Example User",
      :email => "user@example.com",
      :password => "foobar",
      :password_confirmation => "foobar"
    }
    @user = User.create!(@user_attr)

    @attr = {
      :user_id => @user.id,
      :onset_time => DateTime.new,
      :intensity => "4"
    }
  end

  it "should create a new instance given a valid attribute" do
    Headache.create!(@attr)
  end

  it "should require an intensity" do
    no_intensity_headache = Headache.new(@attr.merge(:intensity => ""))
    no_intensity_headache.should_not be_valid
  end

  it "should accept valid intensity values" do
    intensities = %w[1 10]
    intensities.each do |intensity|
      valid_headache = Headache.new(@attr.merge(:intensity => intensity))
      valid_headache.should be_valid
    end
  end

  it "should reject invalid intensity values" do
    intensities = %w[high low 0 11]
    intensities.each do |intensity|
      invalid_headache = Headache.new(@attr.merge(:intensity => intensity))
      invalid_headache.should_not be_valid
    end
  end
end
