class Nicovideo < Webcomic

  protected
  def scrap(html)
    html.at(".main_title h1")
  end

  def chapter_scrap(html)
    html.at(".info_block.shortcut div.inner a.last")
  end
end
