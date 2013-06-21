class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :contact_name
      t.string :email
      t.boolean :front_end, default: false
      t.boolean :back_end, default: false
      t.boolean :designers, default: false
      t.boolean :sys_admins, default: false
      t.boolean :project_managers, default: false
      t.string :city
      t.string :address
      t.string :state
      t.string :phone
    end
  end
end
