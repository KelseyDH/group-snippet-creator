class RenamePrivateToIsPrivate < ActiveRecord::Migration[5.0]
  def change
    rename_column :groups, :private, :is_private
  end
end
