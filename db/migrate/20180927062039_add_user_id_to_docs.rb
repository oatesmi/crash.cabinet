class AddUserIdToDocs < ActiveRecord::Migration[5.2]
  def change
    add_column :docs, :user_id, :integer
    add_foreign_key :docs, :users, on_delete: :cascade
  end
end
