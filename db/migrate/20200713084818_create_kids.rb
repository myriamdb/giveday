class CreateKids < ActiveRecord::Migration[6.0]
  def change
    create_table :kids do |t|
      t.string :first_name,  null: false, default: ""
      t.string :last_name,  null: true, default: ""
      t.date :birthday,  null: false
      t.references :parent, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
