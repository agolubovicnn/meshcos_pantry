module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Meshcos Pantry"
    @seo_keywords = "Alexandar Golubovic portfolio"
  end
end
