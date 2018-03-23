class ChangeThemeInstallationsThemeIdToBigint < ActiveRecord::Migration[5.1]
  def change
    change_column :theme_installations, :theme_id, :bigint
  end
end
