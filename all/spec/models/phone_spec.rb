require 'rails_helper'

describe Phone do
  it "allows two contacts to share a phone number" do
    create(
      :phone,
      phone: '785-555-1234',
      phone_type: 'home'
    )
    expect(build(
      :phone,
      phone: '785-555-1234',
      phone_type: 'home'
    )).to be_valid
  end
end