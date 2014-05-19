require 'spec_helper'

describe "godzillas/show" do
  before(:each) do
    @godzilla = assign(:godzilla, stub_model(Godzilla,
      :teeth => 1,
      :breath_temperature => 1.5,
      :eyes => "9.99",
      :life_story => "MyText",
      :arch_rival => "Arch Rival"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/9.99/)
    rendered.should match(/MyText/)
    rendered.should match(/Arch Rival/)
  end
end
