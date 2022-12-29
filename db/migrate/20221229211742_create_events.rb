class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.references :city, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
