class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string  :name,    null: false
      t.string  :email,   null: false
      t.integer :phone,   null: false
      t.text    :content, null: false

      t.timestamps
    end
  end
end
