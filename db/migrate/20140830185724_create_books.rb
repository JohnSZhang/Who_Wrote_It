class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :publish_year

      t.timestamps
    end
  end
end
