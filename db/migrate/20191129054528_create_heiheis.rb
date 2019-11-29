class CreateHeiheis < ActiveRecord::Migration[5.2]
  def change
    create_table :heiheis do |t|
      t.text :content
    end
  end
end
