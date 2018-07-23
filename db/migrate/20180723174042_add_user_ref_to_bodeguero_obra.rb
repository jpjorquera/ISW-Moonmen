class AddUserRefToBodegueroObra < ActiveRecord::Migration[5.2]
  def change
    add_reference :bodeguero_obras, :user
    add_reference :bodeguero_obras, :bodega_obra
    add_reference :bodeguero_obras, :bodeguero_central
  end
end
