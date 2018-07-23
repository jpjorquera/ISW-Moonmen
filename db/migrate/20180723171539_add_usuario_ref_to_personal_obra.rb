class AddUsuarioRefToPersonalObra < ActiveRecord::Migration[5.2]
  def change
    add_reference :personal_obras, :user
  end
end
