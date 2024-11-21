class AddUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :uid, null: false
      t.string :email, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :image, null: false
      t.string :refresh_token, null: false
      t.timestamps
    end
  end
end
