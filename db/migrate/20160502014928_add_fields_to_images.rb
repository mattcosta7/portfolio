class AddFieldsToImages < ActiveRecord::Migration
  def change
    add_column :images, :exposure, :string
    add_column :images, :f_stop, :string
    add_column :images, :focal_length, :string
    add_column :images, :iso, :string
    add_column :images, :date, :string
    add_column :images, :camera_model, :string
  end
end
