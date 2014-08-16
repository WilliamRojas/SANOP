class AddTipodocAfectedIdToAccident < ActiveRecord::Migration
  def change
    add_column :accidents, :tipodocafectedid, :integer
  end
end
