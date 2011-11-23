class CreateHeadachesCoursesJoinTable < ActiveRecord::Migration
  def self.up
    create_table :headaches_courses, :id => false do |t|
      t.references :headache, :course
    end
  end

  def self.down
    drop_table :headaches_courses
  end
end
