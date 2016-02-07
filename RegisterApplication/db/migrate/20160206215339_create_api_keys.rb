class CreateApiKeys < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|
      t.belongs_to :user, index: true
      t.string :app, null: false
      t.string :key, null: false
      t.string null: false
      t.timestamps null: false
    end
  end
end
