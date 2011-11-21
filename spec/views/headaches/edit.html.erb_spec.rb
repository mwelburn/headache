require 'spec_helper'

describe "headaches/edit.html.erb" do
  before(:each) do
    @headache = assign(:headache, stub_model(Headache,
      :user_id => 1,
      :cause => "MyString",
      :existing_illness => "MyString",
      :intensity => 1,
      :location => "MyString",
      :course => "MyString",
      :mitigating_factors => "MyString",
      :quality => "MyString",
      :associated_symptoms => "MyString",
      :treatment => "MyString",
      :similar_episodes => false,
      :notes => "MyString"
    ))
  end

  it "renders the edit headache form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => headaches_path(@headache), :method => "post" do
      assert_select "input#headache_user_id", :name => "headache[user_id]"
      assert_select "input#headache_cause", :name => "headache[cause]"
      assert_select "input#headache_existing_illness", :name => "headache[existing_illness]"
      assert_select "input#headache_intensity", :name => "headache[intensity]"
      assert_select "input#headache_location", :name => "headache[location]"
      assert_select "input#headache_course", :name => "headache[course]"
      assert_select "input#headache_mitigating_factors", :name => "headache[mitigating_factors]"
      assert_select "input#headache_quality", :name => "headache[quality]"
      assert_select "input#headache_associated_symptoms", :name => "headache[associated_symptoms]"
      assert_select "input#headache_treatment", :name => "headache[treatment]"
      assert_select "input#headache_similar_episodes", :name => "headache[similar_episodes]"
      assert_select "input#headache_notes", :name => "headache[notes]"
    end
  end
end
