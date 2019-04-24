class CreateBatches < ActiveRecord::Migration[5.2]
  def change
    create_table :batches do |t|
      t.string :creator
      t.datetime :date
      t.string :batch_cuid

      t.timestamps
    end
  end
end
