class Project < ApplicationRecord
  has_and_belongs_to_many :users

  has_one :parent, class_name: 'Project', foreign_key: 'parent_id'
  has_many :children, class_name: 'Project', foreign_key: 'parent_id'
  
  has_many :project_statuses
  alias_attribute :statuses, :project_statuses

  def parent 
    Project.find(parent_id) if parent_id
  end
end