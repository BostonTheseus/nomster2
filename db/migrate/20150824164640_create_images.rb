class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :caption
      t.integer :place_id

      t.timestamps
    end

    add_index :images, :place_id
  end

end
