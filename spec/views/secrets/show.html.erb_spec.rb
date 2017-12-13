require 'rails_helper'

RSpec.describe "secrets/show", type: :view do
  before(:each) do
    @secret = assign(:secret, Secret.create!(
      :secret => "Secret"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Secret/)
  end
end
