class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :name
      t.string :phoneNumer
      t.string :adress

      t.timestamps null: false
    end
  end
end
