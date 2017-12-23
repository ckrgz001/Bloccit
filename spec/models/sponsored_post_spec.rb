require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:topic) { Topic.create!(name: name, description: description) }
  let(:sponsored_post) { topic.sponsored_posts.create!(title: title, body: body, price: 500) }

  it { is_expected.to belong_to(:topic) }

  
  describe "attributes" do
    it "has title, body and price attributes" do
      expect(sponsored_post).to have_attributes(title: title, body: body, price: 500)
    end
  end 
end

