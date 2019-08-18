# frozen_string_literal: true

require "rails_helper"

RSpec.describe StaticController, type: :controller do

  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #about" do
    it "returns a success response" do
      get :about
      expect(response).to be_successful
    end
  end

  describe "GET #contact" do
    it "returns a success response" do
      get :contact
      expect(response).to be_successful
    end
  end

end
