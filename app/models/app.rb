class App < ApplicationRecord
  belongs_to :destination
  has_many :memberships
  has_many :users, through: :memberships
  has_many :app_projects, through: :memberships
end
