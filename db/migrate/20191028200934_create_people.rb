class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :url_github
      t.string :phone_number
      t.boolean :is_team
      t.string :email

      t.timestamps
    end
  end
end
