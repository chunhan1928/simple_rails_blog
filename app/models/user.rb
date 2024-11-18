class User < ApplicationRecord
  has_one :profile, dependent: :destroy
  has_many :posts, dependent: :destroy

  def first_name
    name.split.first
  end
end
