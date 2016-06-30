require 'rails_helper'

RSpec.describe Charity, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:description) }

  it { should have many(:family) }

  it "creates slug" do
    charity = create(:charity)

    expect(charity.create_slug).to eq("")
  end
end
