class CreateHeadachesExistingIllnessesJoinTable < ActiveRecord::Migration
  def self.up
    create_table :headaches_existing_illnesses, :id => false do |t|
      t.references :headache, :existing_illness
    end
  end

  def self.down
    drop_table :headaches_existing_illnesses
  end
end
