class Group < ApplicationRecord
  has_and_belongs_to_many :users
  
  has_many :group_statuses
  alias_attribute :statuses, :group_statuses
end