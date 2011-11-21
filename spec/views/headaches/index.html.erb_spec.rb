require 'spec_helper'

describe "headaches/index.html.erb" do
  before(:each) do
    assign(:headaches, [
      stub_model(Headache,
        :user_id => 1,
        :cause => "Cause",
        :existing_illness => "Existing Illness",
        :intensity => 1,
        :location => "Location",
        :course => "Course",
        :mitigating_factors => "Mitigating Factors",
        :quality => "Quality",
        :associated_symptoms => "Associated Symptoms",
        :treatment => "Treatment",
        :similar_episodes => false,
        :notes => "Notes"
      ),
      stub_model(Headache,
        :user_id => 1,
        :cause => "Cause",
        :existing_illness => "Existing Illness",
        :intensity => 1,
        :location => "Location",
        :course => "Course",
        :mitigating_factors => "Mitigating Factors",
        :quality => "Quality",
        :associated_symptoms => "Associated Symptoms",
        :treatment => "Treatment",
        :similar_episodes => false,
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of headaches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cause".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Existing Illness".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Course".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mitigating Factors".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Quality".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Associated Symptoms".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Treatment".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
