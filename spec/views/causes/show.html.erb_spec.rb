require 'spec_helper'

describe "causes/show.html.erb" do
  before(:each) do
    @cause = assign(:cause, stub_model(Cause,
      :description => "Cause"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cause/)
  end
end
