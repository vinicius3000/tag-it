require 'spec_helper'

describe "projectparticipants/edit" do
  before(:each) do
    @projectparticipant = assign(:projectparticipant, stub_model(Projectparticipant))
  end

  it "renders the edit projectparticipant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projectparticipants_path(@projectparticipant), :method => "post" do
    end
  end
end
