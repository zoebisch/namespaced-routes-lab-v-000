require 'rails_helper'

RSpec.describe "access routing", type: :routing do

  it "routes through admin" do
    expect(get: "/admin/access").to be_routable
    expect(patch: "/admin/access/1").to be_routable
  end
end
