class AddFieldsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :live_url, :string
    add_column :projects, :source_code_url, :string
  end
end
