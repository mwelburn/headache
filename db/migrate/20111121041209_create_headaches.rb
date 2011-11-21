class CreateHeadaches < ActiveRecord::Migration
  def change
    create_table :headaches do |t|
      t.integer :user_id, :null => false
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :onset_time, :default => Time.new
      t.time :length
      t.string :cause
      t.string :existing_illness
      t.integer :intensity
      t.string :location_on_head
      t.string :course
      t.string :mitigating_factors
      t.string :quality
      t.string :associated_symptoms
      t.string :treatment
      t.boolean :similar_episodes
      t.string :notes

      t.timestamps
    end
  end
end
