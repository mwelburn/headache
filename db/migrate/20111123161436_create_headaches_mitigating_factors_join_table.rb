class CreateHeadachesMitigatingFactorsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :headaches_mitigating_factors, :id => false do |t|
      t.references :headache, :mitigating_factor
    end
  end

  def self.down
    drop_table :headaches_mitigating_factors
  end
end
