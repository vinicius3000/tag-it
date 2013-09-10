require 'spec_helper'

describe "projectparticipants/new" do
  before(:each) do
    assign(:projectparticipant, stub_model(Projectparticipant).as_new_record)
  end

  it "renders new projectparticipant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projectparticipants_path, :method => "post" do
    end
  end
end
