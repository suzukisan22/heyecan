class AddItemsToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :items, :reference
  end
end
