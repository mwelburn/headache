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

  describe "start time" do
    it "should accept valid start times" do
      pending("implement this")
    end

    it "should reject invalid start times" do
      pending("implement this")
    end

    it "should default a blank start time to the current time" do
      pending("implement this")
    end
  end

  describe "onset length" do
    it "should accept valid onset length values" do
      lengths = %w[1 1:30 0]
      lengths.each do |length|
        valid_headache = Headache.new(@attr.merge(:length => length))
        valid_headache.should be_valid
      end
    end

    it "should reject invalid onset length values" do
      lengths = %w[-1 hours]
      lengths.each do |length|
        invalid_headache = Headache.new(@attr.merge(:length => length))
        invalid_headache.should_not be_valid
      end
    end

    it "should not require an onset length" do
      no_onset_length_headache = Headache.new(@attr.merge(:length => ""))
      no_onset_length_headache.should be_valid
    end
  end

  describe "intensity" do
    it "should require an intensity" do
      no_intensity_headache = Headache.new(@attr.merge(:intensity => ""))
      no_intensity_headache.should_not be_valid
    end

    it "should accept valid intensity values" do
      intensities = %w[0 1 10]
      intensities.each do |intensity|
        valid_headache = Headache.new(@attr.merge(:intensity => intensity))
        valid_headache.should be_valid
      end
    end

    it "should reject invalid intensity values" do
      intensities = %w[high low -1 11 5.0]
      intensities.each do |intensity|
        invalid_headache = Headache.new(@attr.merge(:intensity => intensity))
        invalid_headache.should_not be_valid
      end
    end

    describe "adding causes" do
      before(:each) do
        @cause_attr_1 = {
          :description => "foobar1"
        }
        @cause1 = Cause.create!(@cause_attr_1)

        @cause_attr_2 = {
          :description => "foobar2"
        }
        @cause2 = Cause.create!(@cause_attr_2)
      end

      it "should not require a cause" do
        valid_headache = Headache.new(@attr)
        valid_headache.should be_valid
      end

      it "should accept a cause" do
        valid_headache = Headache.new(@attr)
        valid_headache.add_cause(@cause1)
        assert_same(valid_headache.causes.size, 1)
      end

      it "should allow multiple causes" do
        valid_headache = Headache.new(@attr)
        valid_headache.add_cause(@cause1)
        valid_headache.add_cause(@cause2)
        assert_same(valid_headache.causes.size, 2)
      end

      it "should not allow duplicate causes" do
        valid_headache = Headache.new(@attr)
        valid_headache.add_cause(@cause1)
        valid_headache.add_cause(@cause1)
        assert_same(valid_headache.causes.size, 1)
      end
    end

    describe "removing causes" do
      before(:each) do
        valid_headache = Headache.create!(@attr)

        @cause_attr_1 = {
          :description => "foobar1"
        }
        @cause1 = Cause.create!(@cause_attr_1)

        @cause_attr_2 = {
          :description => "foobar2"
        }
        @cause2 = Cause.create!(@cause_attr_2)

        valid_headache.add_cause(@cause1)
        valid_headache.add_cause(@cause2)
      end

      it "should allow removal of a single cause" do
        pending("implement this")
      end

      it "should allow removal of all causes" do
        pending("implement this")
      end
    end
  end

  describe "adding treatments" do
    before(:each) do
      @treatment_attr_1 = {
        :description => "foobar1"
      }
      @treatment1 = Treatment.create!(@treatment_attr_1)

      @treatment_attr_2 = {
        :description => "foobar2"
      }
      @treatment2 = Treatment.create!(@treatment_attr_2)
    end

    it "should not require a treatment" do
      valid_headache = Headache.new(@attr)
      valid_headache.should be_valid
    end

    it "should accept a treatment" do
      valid_headache = Headache.new(@attr)
      valid_headache.add_treatment(@treatment1)
      assert_same(valid_headache.treatments.size, 1)
    end

    it "should allow multiple treatments" do
      valid_headache = Headache.new(@attr)
      valid_headache.add_treatment(@treatment1)
      valid_headache.add_treatment(@treatment2)
      assert_same(valid_headache.treatments.size, 2)
    end

    it "should not allow duplicate treatments" do
      valid_headache = Headache.new(@attr)
      valid_headache.add_treatment(@treatment1)
      valid_headache.add_treatment(@treatment1)
      assert_same(valid_headache.treatments.size, 1)
    end
  end

  describe "removing treatments" do
    before(:each) do
      valid_headache = Headache.create!(@attr)

      @treatment_attr_1 = {
        :description => "foobar1"
      }
      @treatment1 = Treatment.create!(@treatment_attr_1)

      @treatment_attr_2 = {
        :description => "foobar2"
      }
      @treatment2 = Treatment.create!(@treatment_attr_2)

      valid_headache.add_treatment(@treatment1)
      valid_headache.add_treatment(@treatment2)
    end

    it "should allow removal of a single treatment" do
      pending("implement this")
    end

    it "should allow removal of all treatments" do
      pending("implement this")
    end
  end

  describe "similar episodes" do
    it "should require a similar episodes" do
      pending("implement this")
    end

    it "should accept valid similar episodes" do
      pending("implement this")
    end

    it "should reject invalid similar episodes" do
      pending("implement this")
    end
  end

  describe "notes" do
    it "should not require notes" do
      pending("implement this")
    end

    it "should accept notes" do
      pending("implement this")
    end

    it "should escape html in the notes" do
      pending("implement this")
    end
  end
end
