class CreateMitigatingFactors < ActiveRecord::Migration
  def self.up
    create_table :mitigating_factors do |t|
      t.string :description
      t.boolean :is_active, :default => true
      t.boolean :default, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :mitigating_factors
  end
end
