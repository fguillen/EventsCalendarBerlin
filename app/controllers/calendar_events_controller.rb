class CalendarEventsController < ApplicationController
  def index
    @calendar_events_by_date = CalendarEvent.around_today.by_date.group_by { |calendar_event| calendar_event.date_time.to_date }
  end
end
