class Comico < Webcomic

  protected
  def scrap(html)
    html.at(".m-title-hero__title--manga")
  end

  def chapter_scrap(html)
    html.at(".m-thumb-episode__inner")
  end

end
