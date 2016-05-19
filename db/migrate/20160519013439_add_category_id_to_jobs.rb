class AddCategoryIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :category_id, :string
  end
end
