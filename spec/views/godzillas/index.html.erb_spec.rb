require 'spec_helper'

describe "godzillas/index" do
  before(:each) do
    assign(:godzillas, [
      stub_model(Godzilla,
        :teeth => 1,
        :breath_temperature => 1.5,
        :eyes => "9.99",
        :life_story => "MyText",
        :arch_rival => "Arch Rival"
      ),
      stub_model(Godzilla,
        :teeth => 1,
        :breath_temperature => 1.5,
        :eyes => "9.99",
        :life_story => "MyText",
        :arch_rival => "Arch Rival"
      )
    ])
  end

  it "renders a list of godzillas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Arch Rival".to_s, :count => 2
  end
end
