class CreatePoints < ActiveRecord::Migration[5.1]
  def change
    create_table :points do |t|
      t.string :content
      t.integer :tokuten

      t.timestamps
    end
  end
end
