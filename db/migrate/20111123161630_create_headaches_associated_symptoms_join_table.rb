class CreateHeadachesAssociatedSymptomsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :headaches_associated_symptoms, :id => false do |t|
      t.references :headache, :associated_symptom
    end
  end

  def self.down
    drop_table :headaches_associated_symptoms
  end
end
