namespace :calendar_events_berlin do
  desc "Synch All the Calendar Events"
  task :synch => :environment do
    CalendarEventsSyncherService.perform
  end
end
