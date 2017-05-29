class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.timestamps
    end

    create_table :projects_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :project, index: true
      t.timestamps
    end
  end
end
