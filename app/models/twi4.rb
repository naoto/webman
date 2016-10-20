class Twi4 < Webcomic

  protected
  def scrap(html)
    html.at("title")
  end

  def chapter_scrap(html)
    html.at("#backnumbers .section-body ul li a")
  end
end
