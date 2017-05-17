class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_and_belongs_to_many :groups

  has_many :group_statuses
  alias_attribute :statuses, :group_statuses
end
