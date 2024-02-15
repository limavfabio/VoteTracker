class CreateCandidates < ActiveRecord::Migration[7.1]
  def change
    create_table :candidates do |t|
      t.string :name, null: false
      t.string :office, null: false
      t.references :party, null: false, foreign_key: true

      t.timestamps
    end
  end
end
