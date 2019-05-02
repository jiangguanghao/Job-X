class CreateDeleteTables < ActiveRecord::Migration[5.0]
  def change
    drop_table :add_more_detail_to_jobs
  end
end
