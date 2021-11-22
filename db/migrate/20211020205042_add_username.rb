# frozen_string_literal: true

class AddUsername < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
  end
end
