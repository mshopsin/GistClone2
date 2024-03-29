class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end
    add_index :gists, :title
    add_index :gists, :user_id
  end
end
