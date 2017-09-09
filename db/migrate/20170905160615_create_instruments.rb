class CreateInstruments < ActiveRecord::Migration[5.1]
  def change
    create_table :instruments do |t|
      t.string :name
      t.references :instrument_category, foreign_key: true

      t.timestamps
    end
  end
end
