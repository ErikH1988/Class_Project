class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      # SDP: Can all these fields take a null value? Especially format
      t.string :format
      t.integer :bleed_height
      t.integer :bleed_width
      t.integer :trim_height
      t.integer :trim_width
      t.integer :type_height
      t.integer :type_width

      t.timestamps null: false
    end
  end
end
