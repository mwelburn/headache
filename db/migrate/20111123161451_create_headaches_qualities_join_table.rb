class CreateHeadachesQualitiesJoinTable < ActiveRecord::Migration
  def self.up
    create_table :headaches_qualities, :id => false do |t|
      t.references :headache, :quality
    end
  end

  def self.down
    drop_table :headaches_qualities
  end
end
