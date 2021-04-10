class CreatePrompts < ActiveRecord::Migration[6.1]
  def change
    create_table :prompts do |t|
      t.belongs_to :user, null: true, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true
      t.string :prompt

      t.timestamps
    end
  end
end
