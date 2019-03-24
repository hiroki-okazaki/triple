class AddPrefecturesIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :prefecture, foreign_key: true, index: true, after: :profile
  end
end
