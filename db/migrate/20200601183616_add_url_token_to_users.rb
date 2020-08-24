class AddUrlTokenToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :url_token, :string
  end
end
