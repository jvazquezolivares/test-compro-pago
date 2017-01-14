class AddColumUserToContacto < ActiveRecord::Migration
  def change
    add_column :contactos, :usuario_id, :integer
  end
end
