class CreateKeys < ActiveRecord::Migration
  def change
    create_table :keys do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
