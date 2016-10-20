class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
    	t.attachment :image
    	t.string     :title
    	t.text       :description
    	t.string     :phone
    	t.string     :email
    	t.string     :about_title
    	t.text       :about_description
    	t.string     :info_title
    	t.text       :info_description
      t.timestamps
    end
  end
end
