class ChangeVotes < ActiveRecord::Migration
  def change
    change_column_default(:votes, :choice, 0)
  end
end
