require 'constants'

module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Sens de la visite"
    if !page_title.empty?
      base_title = "#{page_title} | #{base_title}"
    end
    return base_title
  end

  def site_title
    return Constants::SITE_NAME
  end

end
