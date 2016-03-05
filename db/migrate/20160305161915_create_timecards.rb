class CreateTimecards < ActiveRecord::Migration
  def change
    create_table :timecards do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title, null: false

      t.timestamps null: false
    end
  end
end
