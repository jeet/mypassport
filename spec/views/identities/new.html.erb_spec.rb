require 'spec_helper'

describe "identities/new.html.erb" do
  before(:each) do
    assign(:identity, stub_model(Identity,
      :user_id => 1,
      :provider => "MyString",
      :uid => "MyString"
    ).as_new_record)
  end

  it "renders new identity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => identities_path, :method => "post" do
      assert_select "input#identity_user_id", :name => "identity[user_id]"
      assert_select "input#identity_provider", :name => "identity[provider]"
      assert_select "input#identity_uid", :name => "identity[uid]"
    end
  end
end
