class CreateUserSupportForms < ActiveRecord::Migration
  def change
    create_table :user_support_forms do |t|
      t.string :name
      t.string :email
      t.integer :support_type_id
      t.text :message

      t.timestamps null: false
    end
  end
end
