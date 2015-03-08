require 'rails_helper'

describe User do

  before(:each) do

  end

  it "should be valid" do
    user = create :user
    expect(user).to be_valid
  end
end