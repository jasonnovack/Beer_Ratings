class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :name
      t.integer :score
      t.date :when_rated
      t.text :comment

      t.timestamps
    end
  end
end
