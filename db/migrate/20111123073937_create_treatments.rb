class CreateTreatments < ActiveRecord::Migration
  def self.up
    create_table :treatments do |t|
      t.string :description
      t.boolean :is_active, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :treatments
  end
end
