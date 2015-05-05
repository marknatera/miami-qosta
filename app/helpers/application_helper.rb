module ApplicationHelper

  def title(page_title)
    content_for(:title) { page_title }
  end
  def meta_description(page_description)
    content_for(:meta_description) { page_description }
  end

  def keyword(page_keyword)
    content_for(:keyword) { page_keyword }
  end
  
end
