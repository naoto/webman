require 'nokogiri'
require 'uri'
require 'open-uri'

class Webcomic

  attr_reader :title

  def initialize(url)
    @url = url
    @title = get_title
  end

  def chapter_url
    url = chapter_scrap(Nokogiri::HTML.parse(open(@url).read))["href"]
    URI.join(@url, url).to_s
  end

  protected
  def get_title
    scrap(Nokogiri::HTML.parse(open(@url).read)).content
  end

end
