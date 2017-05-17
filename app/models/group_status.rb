class GroupStatus < ApplicationRecord
  belongs_to :group
  has_one :user
end