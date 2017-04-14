class Destination < ApplicationRecord
  has_many :projects
  has_many :apps
end
