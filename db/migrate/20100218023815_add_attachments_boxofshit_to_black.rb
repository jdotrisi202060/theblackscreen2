class AddAttachmentsBoxofshitToBlack < ActiveRecord::Migration
  def self.up
    add_column :blacks, :boxofshit_file_name, :string
    add_column :blacks, :boxofshit_content_type, :string
    add_column :blacks, :boxofshit_file_size, :integer
    add_column :blacks, :boxofshit_updated_at, :datetime
  end

  def self.down
    remove_column :blacks, :boxofshit_file_name
    remove_column :blacks, :boxofshit_content_type
    remove_column :blacks, :boxofshit_file_size
    remove_column :blacks, :boxofshit_updated_at
  end
end
