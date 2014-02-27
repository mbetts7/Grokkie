class AddShortUrlToResources < ActiveRecord::Migration
  def change
    add_column :resources, :short_url, :string
  end
end
