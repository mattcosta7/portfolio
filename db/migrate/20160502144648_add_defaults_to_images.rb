class AddDefaultsToImages < ActiveRecord::Migration
  def change
    change_column_default :images, :exposure,  'N/A'
    change_column_default :images, :f_stop, 'N/A'
    change_column_default :images, :focal_length, 'N/A'
    change_column_default :images, :iso, 'N/A'
    change_column_default :images, :date, 'N/A'
    change_column_default :images, :camera_model, 'N/A'
  end
end
