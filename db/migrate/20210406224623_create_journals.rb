class CreateJournals < ActiveRecord::Migration[6.1]
  def change
    create_table :journals do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.boolean :private

      t.timestamps
    end
  end
end
