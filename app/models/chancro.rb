class Chancro < Webcomic

  protected
  def scrap(html)
    html.at("#titleInformation header h1 strong")
  end

  def chapter_scrap(html)
    html.at("#backNumber ul li a")
  end

end
