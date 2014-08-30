class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :nationality
      t.integer :birth
      t.text :sex

      t.timestamps
    end
  end
end
