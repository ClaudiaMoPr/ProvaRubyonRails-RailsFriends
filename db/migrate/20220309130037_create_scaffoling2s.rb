class CreateScaffoling2s < ActiveRecord::Migration[5.2]
  def change
    create_table :scaffoling2s do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :twitter

      t.timestamps
    end
  end
end
