class AddUserIdToScaffoling2 < ActiveRecord::Migration[5.2]
  def change
    add_column :scaffoling2s, :user_id, :integer
    add_index :scaffoling2s, :user_id
  end
end
