require 'spec_helper'

describe "projectparticipants/show" do
  before(:each) do
    @projectparticipant = assign(:projectparticipant, stub_model(Projectparticipant))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
