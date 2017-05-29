class ProjectStatus < ApplicationRecord
  belongs_to :project
  has_one :user
end