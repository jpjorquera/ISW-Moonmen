class CreatePersonalObras < ActiveRecord::Migration[5.2]
  def change
    create_table :personal_obras do |t|

      t.timestamps
    end
  end
end
