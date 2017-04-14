class User < ApplicationRecord
  has_many :memberships, dependent: :delete_all
  has_one :user_profile, dependent: :destroy
end
