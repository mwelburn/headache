class CreateHeadaches < ActiveRecord::Migration
  def self.up
    create_table :headaches do |t|
      t.integer :user_id, :null => false
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :onset_time, :default => Time.new
      t.time :length
      t.integer :intensity
      t.boolean :similar_episodes
      t.string :notes

      t.string :cause_id
      t.string :existing_illness
      t.string :location_on_head
      t.string :course
      t.string :mitigating_factors
      t.string :quality
      t.string :associated_symptoms
      t.string :treatment

      t.boolean :is_active, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :headaches
  end
end
