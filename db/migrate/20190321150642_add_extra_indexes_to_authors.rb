class AddExtraIndexesToAuthors < ActiveRecord::Migration[5.2]
  def change
    add_index :authors, :login
    add_index :authors, :email
    add_index :authors, [ :login, :email ], name: "index_login_email"
    add_index :authors, [ :email, :login ], name: "index_email_login"
  end
end
