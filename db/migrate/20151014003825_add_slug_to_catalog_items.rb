class AddSlugToCatalogItems < ActiveRecord::Migration
  def change
    add_column :catalog_items, :slug, :string
  end
end
