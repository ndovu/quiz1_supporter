class CreateSupportTypes < ActiveRecord::Migration
  before_create: initialize_support_types

  def change
    create_table :support_types do |t|
      t.string :support_type_name

      t.timestamps null: false
    end
  end
end
