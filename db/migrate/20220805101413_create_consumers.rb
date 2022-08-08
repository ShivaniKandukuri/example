class CreateConsumers < ActiveRecord::Migration[6.0]
  def change
    create_table :consumers do |t|
      t.string :name
      t.string :role

      t.timestamps
    end
  end
end
