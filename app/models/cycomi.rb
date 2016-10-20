class Cycomi < Webcomic

  protected
  def scrap(html)
    html.at("#title-description h2")
  end

  def chapter_scrap(html)
    html.at("#title-menu .second-btn a")
  end

end
