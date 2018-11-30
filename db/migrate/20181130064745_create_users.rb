class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, limit: 16, null: false

      t.timestamps
    end
    add_index :users, :username, unique: true

    create_table :messages do |t|
      t.references :user, foreign_key: true, null: false
      t.string :body, limit: 32, null: false

      t.timestamps
    end
  end
end
