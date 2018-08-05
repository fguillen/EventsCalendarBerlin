module CalendarEventsSyncherService
  def self.perform
    puts WebToCalendarApi::Dock11::Scraper.run
  end
end
