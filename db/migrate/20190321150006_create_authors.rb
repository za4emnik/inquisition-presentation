class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :login
      t.string :email
      t.references :posts, foreign_key: true

      t.timestamps
    end
  end
end
