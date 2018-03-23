class CreateThemeInstallations < ActiveRecord::Migration[5.1]
  def change
    create_table :theme_installations do |t|
      t.integer :shop_id
      t.integer :theme_id

      t.timestamps
    end
  end
end
