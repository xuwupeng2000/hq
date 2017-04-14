class Project < ApplicationRecord
  belongs_to :destination
  has_many :app_projects

end
