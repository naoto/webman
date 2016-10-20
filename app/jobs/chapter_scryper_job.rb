class ChapterScryperJob < ApplicationJob
  queue_as :default

  def perform(*args)
    @sites = Site.all
    @sites.each do |site|
      site.chapter_crawl
    end
  end
end
