class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.string :description
      t.boolean :is_active, :default => true
      t.boolean :default, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
