class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.integer :url_id
      t.string  :content_type
      t.string  :text
      t.timestamps
    end
  end
end
