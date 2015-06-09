module ApplicationHelper

  def content_for_title_tag
    content_for(:title_tag) if content_for?(:title_tag)
  end
end
