# frozen_string_literal: true

require "rails_helper"

RSpec.describe PostsController, type: :controller do

  let(:valid_attributes) do
    {
      title: Faker::Lorem.sentence(word_count: 3),
      content: Faker::Lorem.paragraph,
    }
  end

  let(:invalid_attributes) do
    { title: "" }
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    let(:post) { create(:post, valid_attributes) }

    it "returns http success" do
      get :show, params: { slug: post.slug.to_param }
      expect(response).to have_http_status(:success)
    end
  end

end
