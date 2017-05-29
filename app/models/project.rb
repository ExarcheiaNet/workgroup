class Project < ApplicationRecord
  has_and_belongs_to_many :users
  
  has_many :project_statuses
  alias_attribute :statuses, :project_statuses
end