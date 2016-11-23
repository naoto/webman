class Nicovideo < Webcomic

  protected
  def scrap(html)
    html.at(".main_title h1")
  end

  def chapter_scrap(html)
    html.search("#episode_list .episode_item").last.at("a")
  end
end
