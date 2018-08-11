class CalendarEventsController < ApplicationController
  def index
    @calendar_events_by_date = CalendarEvent.around_today.group_by { |calendar_event| calendar_event.date_time.to_date }
    # @calendar_events_by_date = [[Time.now, CalendarEvent.all]]
  end

  def index_back
    # @calendar_events_by_date = CalendarEvent.all.group_by { |calendar_event| calendar_event.date_time.to_date }
    # @calendar_events_by_date = [[Time.now, CalendarEvent.all]]
    # @calendar_events_by_date = [[Time.now, CalendarEvent.all]]
  end
end
