class AddThemeNameToThemeInstallations < ActiveRecord::Migration[5.1]
  def change
    add_column :theme_installations, :theme_name, :string
  end
end
