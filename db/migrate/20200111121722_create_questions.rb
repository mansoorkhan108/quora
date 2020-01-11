class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :topic_id
      t.text :text

      t.timestamps
    end
  end
end
