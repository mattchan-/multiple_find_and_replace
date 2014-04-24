class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :description
      t.string :content
      t.integer :template_id

      t.timestamps
    end
  end
end
