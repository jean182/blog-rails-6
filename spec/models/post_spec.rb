# frozen_string_literal: true

require "rails_helper"

RSpec.describe Post, type: :model do

  describe "#validations" do
    let!(:post) { create(:post) }
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_uniqueness_of(:slug) }
  end

  describe "#set_slug" do

    let(:post) { create(:post, title: "First Post") }
    let(:same_post) { create(:post, title: "First Post") }

    it "should create a slug for the new post" do
      expect(post.slug).not_to be_empty
    end

    it "should create different slugs" do
      expect(post.slug).not_to eq(same_post.slug)
    end

    context "verifying slug value" do
      before(:each) do
        SecureRandom.stub(:hex).and_return("1234567890")
      end

      it "should create a slug with a SecureRandom" do
        expect(post.slug).to eq("first-post-1234567890")
      end
    end

  end

end
