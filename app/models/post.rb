# frozen_string_literal: true

class Post < ApplicationRecord

  validates :title, presence: true
  validates :slug, uniqueness: true
  before_create :set_slug

  private

  def set_slug
    self.slug = "#{title.downcase.gsub(/\s+/, '-')}-#{SecureRandom.hex(10)}"
  end

end
