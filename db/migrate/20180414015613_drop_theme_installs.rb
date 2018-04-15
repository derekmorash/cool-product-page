class DropThemeInstalls < ActiveRecord::Migration[5.1]
  def change
    drop_table :theme_installs
  end
end
