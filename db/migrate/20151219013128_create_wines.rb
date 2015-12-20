class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.string :string
      t.string :year
      t.string :integer
      t.string :winery
      t.string :string
      t.string :country
      t.string :string
      t.string :varietal
      t.string :string

      t.timestamps null: false
    end
  end
end
