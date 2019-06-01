class AddSubdomainColumnToAuthor < ActiveRecord::Migration[5.1]
  def change
  	add_column :authors, :subdomain, :string
  end
end
