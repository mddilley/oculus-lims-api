class CreateSamples < ActiveRecord::Migration[5.2]
  def change
    create_table :samples do |t|
      t.string :sample_cuid
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :batch_id

      t.timestamps
    end
  end
end
