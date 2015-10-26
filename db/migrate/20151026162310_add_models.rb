class AddModels < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.column :body, :string

      t.timestamps
    end

    create_table :answers do |t|
      t.column :body, :string
      t.column :question_id, :integer

      t.timestamps
    end

    create_table :votes do |t|
      t.column :answer_id, :integer

      t.timestamps
    end
  end
end
