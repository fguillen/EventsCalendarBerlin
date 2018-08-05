class CalendarEvent < ApplicationRecord
  belongs_to :venue

  serialize :info, JSON
  serialize :pics, JSON
  serialize :tags, JSON
end
