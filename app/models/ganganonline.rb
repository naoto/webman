require 'nokogiri'
require 'open-uri'

class Ganganonline < Webcomic

  protected
  def scrap(html)
    html.at("#gn_content_h2")
  end

  def chapter_scrap(html)
    html.at(".gn_link_btn")
  end

end
