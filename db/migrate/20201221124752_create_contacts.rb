class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.integer :category_id,  null: false
      t.text :message,   null: false
      t.references :client,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
