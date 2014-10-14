class AddSlugToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :slug, :string
  end
end
