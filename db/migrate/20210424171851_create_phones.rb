class CreatePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :phones do |t|
      t.belongs_to :state
      t.string :number

      t.timestamps
    end
  end
end
