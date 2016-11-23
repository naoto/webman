class Site < ApplicationRecord

  def scrap!
    case self.url
    when /www.ganganonline.com/
      self.title = Ganganonline.new(self.url).title
    when /comic-walker.com/
      self.title = Comicwalker.new(self.url).title
    when /www.comico.jp/
      self.title = Comico.new(self.url).title
    when /sai-zen-sen.jp/
      self.title = Twi4.new(self.url).title
    when /www.tonarinoyj.jp/
      self.title = Tonarinoyj.new(self.url).title
    when /yawaspi.com/
      self.title = Yawaspi.new(self.url).title
    when /cycomi.com/
      self.title = Cycomi.new(self.url).title
    when /seiga.nicovideo.jp/
      self.title = Nicovideo.new(self.url).title
    when /chancro.jp/
      self.title = Chancro.new(self.url).title
    end
    if self.url.empty?
      false
    else
      save
    end
  end

  def chapter_crawl
    puts self.url
    case self.url
    when /www.ganganonline.com/
      url= Ganganonline.new(self.url).chapter_url
    when /comic-walker.com/
      url = Comicwalker.new(self.url).chapter_url
    when /www.comico.jp/
      url = Comico.new(self.url).chapter_url
    when /sai-zen-sen.jp/
      url = Twi4.new(self.url).chapter_url
    when /www.tonarinoyj.jp/
      url = Tonarinoyj.new(self.url).chapter_url
    when /yawaspi.com/
      url = Yawaspi.new(self.url).chapter_url
    when /cycomi.com/
      url = Cycomi.new(self.url).chapter_url
    when /seiga.nicovideo.jp/
      url = Nicovideo.new(self.url).chapter_url
    when /chancro.jp/
      url = Chancro.new(self.url).chapter_url
    end

    if Chapter.where(url: url).empty?
      chapter = Chapter.new
      chapter.url = url
      chapter.site = self
      chapter.date = Date.today
      chapter.save
    end
  end

end
