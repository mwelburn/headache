require 'spec_helper'

describe "causes/edit.html.erb" do
  before(:each) do
    @cause = assign(:cause, stub_model(Cause,
      :description => "MyString"
    ))
  end

  it "renders the edit cause form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => causes_path(@cause), :method => "post" do
      assert_select "input#cause_description", :name => "cause[description]"
    end
  end
end
