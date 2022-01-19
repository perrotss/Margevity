class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :your_business
      t.text :looking_for

      t.timestamps
    end
  end
end
