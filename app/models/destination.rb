class Destination < ApplicationRecord
  default_scope { where(hidden: false) } # By default we only show user what is available

  has_many :projects
  has_many :apps
end
