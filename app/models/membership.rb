class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :app
  has_many :app_projects
end
