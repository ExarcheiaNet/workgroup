class ProjectsSelfReferential < ActiveRecord::Migration[5.0]
  def change
    add_reference :projects, :parent, index: true
  end
end
