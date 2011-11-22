require 'spec_helper'

describe "headaches/show.html.erb" do
  before(:each) do
    @headache = assign(:headache, stub_model(Headache,
      :user_id => 1,
#      :cause => "Cause",
#      :existing_illness => "Existing Illness",
      :intensity => 1,
#      :location => "Location",
#      :course => "Course",
#      :mitigating_factors => "Mitigating Factors",
#      :quality => "Quality",
#      :associated_symptoms => "Associated Symptoms",
#      :treatment => "Treatment",
      :similar_episodes => false,
      :notes => "Notes"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    rendered.should match(/Cause/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    rendered.should match(/Existing Illness/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    rendered.should match(/Location/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    rendered.should match(/Course/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    rendered.should match(/Mitigating Factors/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    rendered.should match(/Quality/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    rendered.should match(/Associated Symptoms/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    rendered.should match(/Treatment/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Notes/)
  end
end
