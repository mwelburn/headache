class CreateHeadachesCausesJoinTable < ActiveRecord::Migration
  def self.up
    create_table :headaches_causes, :id => false do |t|
      t.integer :headache_id
      t.integer :cause_id
    end
  end

  def self.down
    drop_table :headaches_causes
  end
end
