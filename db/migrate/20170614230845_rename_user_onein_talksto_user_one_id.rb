class RenameUserOneinTalkstoUserOneId < ActiveRecord::Migration[5.0]
  def change
    rename_column :talks, :user_one, :user_one_id
  end
end
