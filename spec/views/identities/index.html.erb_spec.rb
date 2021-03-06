require 'spec_helper'

describe "identities/index.html.erb" do
  before(:each) do
    assign(:identities, [
      stub_model(Identity,
        :user_id => 1,
        :provider => "Provider",
        :uid => "Uid"
      ),
      stub_model(Identity,
        :user_id => 1,
        :provider => "Provider",
        :uid => "Uid"
      )
    ])
  end

  it "renders a list of identities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Provider".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Uid".to_s, :count => 2
  end
end
