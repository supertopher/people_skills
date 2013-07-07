class CreateSkillSets < ActiveRecord::Migration
  def change
    create_table :skillsets do |t|
      t.belongs_to :user
      t.belongs_to :skill
      t.integer    :proficiency, :default => 0
    end
  end
end
