require 'spec_helper'

describe "projectparticipants/index" do
  before(:each) do
    assign(:projectparticipants, [
      stub_model(Projectparticipant),
      stub_model(Projectparticipant)
    ])
  end

  it "renders a list of projectparticipants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
