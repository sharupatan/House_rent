class Renamecolumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :houses, :type, :desription
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
