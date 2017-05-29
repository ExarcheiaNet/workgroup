class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_and_belongs_to_many :projects

  has_many :project_statuses
  alias_attribute :statuses, :project_statuses
end
