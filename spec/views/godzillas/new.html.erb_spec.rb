require 'spec_helper'

describe "godzillas/new" do
  before(:each) do
    assign(:godzilla, stub_model(Godzilla,
      :teeth => 1,
      :breath_temperature => 1.5,
      :eyes => "9.99",
      :life_story => "MyText",
      :arch_rival => "MyString"
    ).as_new_record)
  end

  it "renders new godzilla form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", godzillas_path, "post" do
      assert_select "input#godzilla_teeth[name=?]", "godzilla[teeth]"
      assert_select "input#godzilla_breath_temperature[name=?]", "godzilla[breath_temperature]"
      assert_select "input#godzilla_eyes[name=?]", "godzilla[eyes]"
      assert_select "textarea#godzilla_life_story[name=?]", "godzilla[life_story]"
      assert_select "input#godzilla_arch_rival[name=?]", "godzilla[arch_rival]"
    end
  end
end
