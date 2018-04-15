class ThemeInstallation < ApplicationRecord
  belongs_to :shop
  validates :theme_id, presence: true
  validates :theme_name, presence: true
end
