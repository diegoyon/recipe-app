require 'rails_helper'

RSpec.describe "foods/index", type: :view do
  before(:each) do
    assign(:foods, [
      Food.create!(
        name: "Name",
        measurement_unit: "Measurement Unit",
        price: 2.5,
        quantity: 3
      ),
      Food.create!(
        name: "Name",
        measurement_unit: "Measurement Unit",
        price: 2.5,
        quantity: 3
      )
    ])
  end

  it "renders a list of foods" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Measurement Unit".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end
