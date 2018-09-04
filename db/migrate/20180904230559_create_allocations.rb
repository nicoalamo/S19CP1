class CreateAllocations < ActiveRecord::Migration[5.2]
  def change
    create_table :allocations do |t|
      t.references :worker, foreign_key: true
      t.references :proyect, foreign_key: true

      t.timestamps
    end
  end
end
