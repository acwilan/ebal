class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :body

      t.timestamps
    end
    
    add_reference :messages, :from, references: :users, index:true
    add_foreign_key :messages, :users, column: :from_id
    
    add_reference :messages, :to, references: :users, index:true
    add_foreign_key :messages, :users, column: :to_id
  end
end
