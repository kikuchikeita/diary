class CreateJournals < ActiveRecord::Migration[6.0]
  def change
    create_table :journals do |t|
      t.string :title
      t.date :when
      t.string :where
      t.string :who
      t.string :what
      t.string :why
      t.string :how
      t.text :body

      t.timestamps
    end
  end
end
