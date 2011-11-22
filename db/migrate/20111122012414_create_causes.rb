class CreateCauses < ActiveRecord::Migration
  def self.up
    create_table :causes do |t|
      t.string :description
      t.boolean :is_active, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :causes
  end
end
