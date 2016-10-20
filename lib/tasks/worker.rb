class Tasks::Worker
  def self.execute
     ChapterScryperJob.perform_later
  end
end
