class DeleteNameFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :name
  end
end
