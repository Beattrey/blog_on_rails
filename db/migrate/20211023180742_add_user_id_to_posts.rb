class AddUserIdToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, 'username', :string
    add_column :articles, 'user_id', :integer
  end
end
