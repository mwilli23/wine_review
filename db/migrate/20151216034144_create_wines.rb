class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :title
      t.string :producer
      t.integer :vintage
      t.decimal :price

      t.timestamps null: false
    end
  end
end
