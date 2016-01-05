class CreateCopies < ActiveRecord::Migration
  def change
    create_table :copies do |t|
      t.references :user, index: true, foreign_key: true
      t.references :game, index: true, foreign_key: true
      t.string :console

      t.timestamps null: false
    end
  end
end
