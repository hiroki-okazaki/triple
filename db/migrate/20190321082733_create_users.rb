class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string   :name
      t.string   :email
      t.integer  :gender
      t.integer  :age
      t.references  :region_id
      t.boolean  :supporter_flg
      t.boolean  :tripper_flg
      t.text     :profile
      
      t.timestamps
    end
  end
end
