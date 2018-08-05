require 'test_helper'

class CalendarEventsSyncherServiceTest < ActiveSupport::TestCase
  def test_perform
    CalendarEventsSyncherService.perform
  end
end
