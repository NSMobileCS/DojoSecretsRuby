require 'rails_helper'

RSpec.describe "secrets/index", type: :view do
  before(:each) do
    assign(:secrets, [
      Secret.create!(
        :secret => "Secret"
      ),
      Secret.create!(
        :secret => "Secret"
      )
    ])
  end

  it "renders a list of secrets" do
    render
    assert_select "tr>td", :text => "Secret".to_s, :count => 2
  end
end
