class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|

    	t.attachment	:image
    	t.string		:title
    	t.text			:description
    	t.string		:fraction_one
    	t.string		:fraction_two
    	t.string		:fraction_three
    	t.integer		:many
    	t.boolean		:invis, default: true
    	t.boolean		:sidebar, default: false

      t.timestamps
    end
  end
end
