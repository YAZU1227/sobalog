class CreateSobas < ActiveRecord::Migration[7.0]
  def change
    create_table :sobas do |t|
      t.string :name
      t.string :type
      t.string :hot_menu
      t.string :cold_menu
      t.string :side_menu
      t.string :alcohol_menu
      t.string :sobayu
      t.string :eating_with
      t.string :seat
      t.string :price

      t.timestamps
    end
  end
end
