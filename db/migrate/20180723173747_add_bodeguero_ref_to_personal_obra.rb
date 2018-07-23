class AddBodegueroRefToPersonalObra < ActiveRecord::Migration[5.2]
  def change
    add_reference :personal_obras, :bodeguero_obra
  end
end
