class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  after_action :set_page_meta_tags

  private
  def set_page_meta_tags
    @page_title       = t('.title')
    @page_description = t('.description')
    @page_keywords    = t('.keywords')
  end

end
