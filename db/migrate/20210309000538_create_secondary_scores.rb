class CreateSecondaryScores < ActiveRecord::Migration[6.1]
  def change
    create_table :secondary_scores do |t|
      t.integer :bookmark_a_id
      t.integer :bookmark_b_id
      t.integer :score

      t.timestamps
    end
  end
end
