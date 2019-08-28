class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :line_1
      t.string :line_2
      t.string :city
      t.string :state
      t.string :zip
      t.belongs_to :contact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
