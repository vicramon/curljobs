class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :email
      t.boolean :front_end, default: false
      t.boolean :back_end, default: false
      t.boolean :designer, default: false
      t.boolean :sys_admin, default: false
      t.boolean :project_manager, default: false
      t.text :languages
      t.text :past_jobs
      t.text :work_samples
      t.text :location
      t.boolean :relocate, default: false
      t.text :relocation_preferences
      t.boolean :visible, default: false
      t.string :referred_by
    end
  end
end
