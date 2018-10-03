class AddPasswordDigestToUserModel < ActiveRecord::Migration[5.1]
  def change
    # add column called password digest
    remove_column :users, :password
    add_column :users, :password_digest, :string
  end
end
