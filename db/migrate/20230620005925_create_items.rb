class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.string :url_image

      t.timestamps
    end
  end
end
