class CreateUserPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :user_points do |t|
      t.references :user, :column => :point_ids , foreign_key: true
      t.references :point, foreign_key: true

      t.timestamps
    end
  end
end
