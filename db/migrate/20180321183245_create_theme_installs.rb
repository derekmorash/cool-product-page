class CreateThemeInstalls < ActiveRecord::Migration[5.1]
  def change
    create_table :theme_installs do |t|
      t.integer :shop_id
      t.string :shop_domain
      t.integer :theme_id

      t.timestamps
    end
  end
end
