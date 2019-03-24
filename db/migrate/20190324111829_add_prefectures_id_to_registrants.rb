class AddPrefecturesIdToRegistrants < ActiveRecord::Migration[5.2]
  def change
    add_reference :registrants, :prefecture, foreign_key: true, index: true, after: :profile
  end
end
