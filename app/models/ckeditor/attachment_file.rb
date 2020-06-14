# frozen_string_literal: true

class Ckeditor::AttachmentFile < Ckeditor::Asset
  has_one_attached :data
  validates :data, attached: true, size: { less_than: 100.megabytes , message: 'is not given between size' }

  def url_thumb
    @url_thumb ||= Ckeditor::Utils.filethumb(filename)
  end
end
