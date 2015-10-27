class ChangeComment < ActiveRecord::Migration
  def change
    remove_column :comments, :question_id
    add_column :comments, :answer_id, :integer
  end
end
