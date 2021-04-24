class CreateSemaphores < ActiveRecord::Migration[6.1]
  def change
    create_table :semaphores do |t|
      t.belongs_to :state, index: true
      t.integer :color
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
