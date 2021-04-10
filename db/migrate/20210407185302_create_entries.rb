class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.belongs_to :journal, null: false, foreign_key: true
      t.belongs_to :prompt, null: false, foreign_key: true
      t.string :title
      t.string :mood
      t.text :content
      t.datetime :date

      t.timestamps
    end
  end
end
