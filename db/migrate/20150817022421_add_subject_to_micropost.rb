class AddSubjectToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :subject, :string
  end
end
