class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.integer :stars

      t.timestamps
    end
  end

  # def up
  #   create_table :hotels do |t|
  #     t.string :name
  #     t.integer :stars

  #     t.timestamps
  #   end
  # end

  # def down
  #   drop_table :hotels
  # end
end
