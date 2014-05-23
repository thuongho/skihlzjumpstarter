class AddValidationsToUsersEmail < ActiveRecord::Migration
  def up
    change_column :users, :email, :string, null: false, default: ""
  end

  def down
  end
end
