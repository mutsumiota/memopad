class CreateMemopads < ActiveRecord::Migration
  def self.up
    create_table :memopads do |t|
      t.string :title
      t.date :due

      t.timestamps
    end
  end

  def self.down
    drop_table :memopads
  end
end
