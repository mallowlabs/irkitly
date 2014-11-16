class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :nickname, :null => false
      t.string :name, :null => false
      t.timestamps
    end

    add_index :users, :nickname, unique: true
    add_index :users, :name, unique: false
  end
end
