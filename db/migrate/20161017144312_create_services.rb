class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
    	t.attachment	:image
    	t.string		:title
    	t.text			:description
    	t.integer		:many
    	t.boolean		:gorizont, default: false
      t.timestamps
    end
  end
end
