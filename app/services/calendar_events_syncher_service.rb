module CalendarEventsSyncherService
  def self.perform
    venues = Venue.all

    venues.each do |venue|
      calendar_elements = Object.const_get("WebToCalendarApi::#{venue.scraper_module_name}::Scraper").run["calendar_elements"]

      calendar_elements.each do |calendar_element|
        attributes = {
          :venue => venue,
          :title => calendar_element["title"],
          :date_time => calendar_element["date_time"],
          :checksum => calendar_element["checksum"],
          :url => calendar_element["url"],
          :info => calendar_element["info"],
          :pics => calendar_element["pics"],
          :address => calendar_element["address"],
          :duration_minutes => calendar_element["duration_minutes"],
          :price_euros => calendar_element["price_euros"],
          :tags => calendar_element["tags"]
        }

        calendar_event = CalendarEvent.find_or_create_by(:checksum => calendar_element["checksum"])
        calendar_event.update_attributes!(attributes)
      end
    end

  end
end
