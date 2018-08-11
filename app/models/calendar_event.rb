class CalendarEvent < ApplicationRecord
  belongs_to :venue

  scope :around_today, -> { where("date_time between ? and ?", 1.day.ago, 30.days.from_now)}
  scope :by_date, -> { order(:date_time => :asc) }

  serialize :info, JSON
  serialize :pics, JSON
  serialize :tags, JSON
end
