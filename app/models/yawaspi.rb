class Yawaspi < Webcomic

  protected
  def scrap(html)
    html.at(".comicTilte h1")
  end

  def chapter_scrap(html)
    html.at(".numberBox a")
  end
end
