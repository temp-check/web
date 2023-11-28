class CreateSearches < ActiveRecord::Migration[7.1]
  def change
    create_table :searches do |t|
      t.string :address, null: false
      t.json :data, null: true
      t.json :error, null: true
      t.boolean :cached, null: false, default: true
      t.timestamps
    end
  end
end
