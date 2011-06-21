require 'spec_helper'

describe "identities/edit.html.erb" do
  before(:each) do
    @identity = assign(:identity, stub_model(Identity,
      :user_id => 1,
      :provider => "MyString",
      :uid => "MyString"
    ))
  end

  it "renders the edit identity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => identities_path(@identity), :method => "post" do
      assert_select "input#identity_user_id", :name => "identity[user_id]"
      assert_select "input#identity_provider", :name => "identity[provider]"
      assert_select "input#identity_uid", :name => "identity[uid]"
    end
  end
end
