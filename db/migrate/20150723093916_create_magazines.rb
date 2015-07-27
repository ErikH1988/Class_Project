class CreateMagazines < ActiveRecord::Migration
  def change
    create_table :magazines do |t|
      # SDP: Can these fields take a null value
      t.string :title
      t.integer :publisher_id # SDP: This column is a foreign key, so it should have an index on it

      t.timestamps null: false
    end
  end
end
