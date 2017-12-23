require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do

  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
  let(:sponsored_post) { topic.sponsored_posts.create!(title: "Sponsored Title", body: "Sponsored Body", price: 500) }

  it { is_expected.to belong_to(:topic) }

  
  describe "attributes" do
    it "has title, body and price attributes" do
      expect(sponsored_post).to have_attributes(title: "Sponsored Title", body: "Sponsored Body", price: 500)
    end
  end 
end

