require 'nokogiri'
require 'open-uri'

class Comicwalker < Webcomic

  protected
  def scrap(html)
    html.at(".bookTitle")
  end

  def chapter_scrap(html)
    html.at(".detail_latestStoryBtn.mgb10 a")
  end

end
