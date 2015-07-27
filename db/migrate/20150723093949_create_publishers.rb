class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      # SDP: Again, can this column take a null value?
      t.string :name

      t.timestamps null: false
    end
  end
end
