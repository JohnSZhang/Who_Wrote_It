class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :chapter_name
      t.text :content

      t.timestamps
    end
    #add_index :chapters, [:chapters_id]
  end
end
