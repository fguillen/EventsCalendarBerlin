class CalendarEventsController < ApplicationController
  def index
    @dates = CalendarEvent.around_today.pluck("date(date_time)").uniq.sort
    @venue_names = CalendarEvent.around_today.map { |e| e.venue.name }.uniq.sort
    @tags = CalendarEvent.around_today.pluck(:tags).map { |e| e.split(",") }.flatten.uniq.sort
    @calendar_events_by_date = CalendarEvent.around_today.by_date.group_by { |calendar_event| calendar_event.date_time.to_date }
  end
end
