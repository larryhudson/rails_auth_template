# frozen_string_literal: true

class User < ApplicationRecord
  serialize :spotify_hash

  has_secure_password
  has_and_belongs_to_many :rooms

  validates :email, presence: true, uniqueness: true
end
