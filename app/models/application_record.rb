class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  	has_attached_file :image
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	validates :many, {numericality: {greater_than: 0, allow_nil: true}}
	validates :title, :description, presence: true
end
