class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.timestamps
    end

    create_table :groups_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :group, index: true
      t.timestamps
    end
  end
end
