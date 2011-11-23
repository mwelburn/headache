class CreateHeadachesTreatmentsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :headaches_treatments, :id => false do |t|
      t.integer :headache_id
      t.integer :treatment_id
    end
  end

  def self.down
    drop_table :headaches_treatments
  end
end
