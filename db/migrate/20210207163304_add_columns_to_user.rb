class AddColumnsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :email, :string
    add_column :users, :company_name, :string
    add_column :users, :joining_date, :date
    add_column :users, :job_location, :string
  end
end
