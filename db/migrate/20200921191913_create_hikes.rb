class CreateHikes < ActiveRecord::Migration[6.0]
  def change
    create_table :hikes do |t|
      t.string :mountain
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
