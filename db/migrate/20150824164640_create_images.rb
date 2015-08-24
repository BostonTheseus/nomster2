class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|

    	t.text :caption
    	t.integer :place_id

      t.timestamps
    end
  end

  add_index :photos, :place_id
end
