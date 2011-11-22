require 'spec_helper'

describe "causes/new.html.erb" do
  before(:each) do
    assign(:cause, stub_model(Cause,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new cause form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => causes_path, :method => "post" do
      assert_select "input#cause_description", :name => "cause[description]"
    end
  end
end
