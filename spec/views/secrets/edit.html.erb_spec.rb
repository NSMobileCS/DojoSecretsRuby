require 'rails_helper'

RSpec.describe "secrets/edit", type: :view do
  before(:each) do
    @secret = assign(:secret, Secret.create!(
      :secret => "MyString"
    ))
  end

  it "renders the edit secret form" do
    render

    assert_select "form[action=?][method=?]", secret_path(@secret), "post" do

      assert_select "input[name=?]", "secret[secret]"
    end
  end
end
