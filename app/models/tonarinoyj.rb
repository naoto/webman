class Tonarinoyj < Webcomic

  protected
  def scrap(html)
    html.at(".single-backnumber dl dt")
  end

  def chapter_scrap(html)
    html.at("a.single")
  end
end
