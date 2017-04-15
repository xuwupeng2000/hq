class Project < ApplicationRecord
  default_scope { where(hidden: false) }

  belongs_to :destination
  has_many :app_projects

end
