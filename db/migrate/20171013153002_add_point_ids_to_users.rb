class AddPointIdsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :point_ids, :integer
  end
end
