class CreateTags < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|
      t.string :category_name
      t.string :image

      t.timestamps
    end
  end
end
