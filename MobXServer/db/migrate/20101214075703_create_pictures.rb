class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.string :file_name
      t.integer :owner
      t.string :note

      t.timestamps
    end
  end

  def self.down
    drop_table :pictures
  end
end
