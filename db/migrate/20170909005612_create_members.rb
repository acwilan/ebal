class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.string :gender
      t.string :email
      t.date :birthday
      t.string :phone
      t.date :joined_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
