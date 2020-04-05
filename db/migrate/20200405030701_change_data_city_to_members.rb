class ChangeDataCityToMembers < ActiveRecord::Migration[5.0]
  def change
    change_column :members, :city, :integer
  end
end
