class ChangeThemeIdType < ActiveRecord::Migration[5.1]
  def change
    change_column :theme_installs, :theme_id, :string
  end
end
