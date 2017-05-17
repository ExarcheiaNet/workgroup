class AddStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :group_statuses do |t|
      t.text :text
      t.belongs_to :group, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
