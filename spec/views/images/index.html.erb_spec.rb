require 'rails_helper'

RSpec.describe "images/index", type: :view do
  before(:each) do
    assign(:images, [
      Image.create!(
        :user_id => 1,
        :file_name => "File Name"
      ),
      Image.create!(
        :user_id => 1,
        :file_name => "File Name"
      )
    ])
  end

  it "renders a list of images" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "File Name".to_s, :count => 2
  end
end
