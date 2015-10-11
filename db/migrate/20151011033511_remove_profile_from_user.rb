class RemoveProfileFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :profile, :string
  end
end
