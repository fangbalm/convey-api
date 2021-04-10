class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :gender
      t.string :ethnicity
      t.boolean :lgbt_status
      t.boolean :disability_status
      t.boolean :immigration_status

      t.timestamps
    end
  end
end
