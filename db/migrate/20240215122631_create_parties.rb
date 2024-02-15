class CreateParties < ActiveRecord::Migration[7.1]
  def change
    create_table :parties do |t|
      t.string :name, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
