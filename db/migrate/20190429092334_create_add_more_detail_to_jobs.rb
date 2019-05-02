class CreateAddMoreDetailToJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :add_more_detail_to_jobs do |t|
      t.integer :wage_upper_bound
      t.integer :wage_lower_bound
      t.string  :contact_email
      t.timestamps
    end
  end
end
