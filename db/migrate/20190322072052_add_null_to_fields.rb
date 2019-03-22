class AddNullToFields < ActiveRecord::Migration[5.2]
  def change
    change_column :authors, :name, :string, null: true
    change_column :authors, :login, :string, null: true
    change_column :authors, :email, :string, null: true
    change_column :authors, :posts_id, :string, null: true
  end
end
