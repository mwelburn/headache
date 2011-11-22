require 'spec_helper'

describe "causes/index.html.erb" do
  before(:each) do
    assign(:causes, [
      stub_model(Cause,
        :description => "Cause 1"
      ),
      stub_model(Cause,
        :description => "Cause 2"
      )
    ])
  end

  it "renders a list of causes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cause".to_s, :count => 2
  end
end
