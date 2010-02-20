class CreateBlacks < ActiveRecord::Migration
  def self.up
    create_table :blacks do |t|
      t.text :description, :null => false
      t.integer :user_id, :null => false
      t.timestamp :lastaccessed
      t.timestamps
    end
  end
  
  def self.down
    drop_table :blacks
  end
end
