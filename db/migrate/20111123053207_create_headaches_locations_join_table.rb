class CreateHeadachesLocationsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :headaches_locations, :id => false do |t|
      t.integer :headache_id
      t.integer :location_id
    end
  end

  def self.down
    drop_table :headaches_locations
  end
end
