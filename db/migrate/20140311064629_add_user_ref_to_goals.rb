class AddUserRefToGoals < ActiveRecord::Migration
  def change
    add_reference :goals, :user, index: true
  end
end
