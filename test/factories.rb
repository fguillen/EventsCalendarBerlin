FactoryBot.define do
  factory :venue do
    name "NAME"
  end

  factory :calendar_event do
    venue
    date_time "2018-08-05 20:00"

    sequence(:title) { |n| "TITLE_#{n}" }
    sequence(:checksum) { |n| "CHECKSUM_#{n}" }
    sequence(:url) { |n| "http://example.com/event/#{n}" }
  end
end
