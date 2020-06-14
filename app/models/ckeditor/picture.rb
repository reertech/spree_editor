# frozen_string_literal: true

class Ckeditor::Picture < Ckeditor::Asset
  has_one_attached :data
  validates :data, attached: true, content_type: /\Aimage/, size: { less_than: 2.megabytes , message: 'is not given between size' }
end
