Time::DATE_FORMATS.merge!( :datetimedb => "%Y-%m-%d %H:%M:%S" )
Time::DATE_FORMATS.merge!( :datedb => "%Y-%m-%d" )
Time::DATE_FORMATS.merge!( :datehuman => "%d/%m/%Y" )
Time::DATE_FORMATS.merge!( :datehuman_long => "%A %-d %B, %Y at %H:%M" )
Time::DATE_FORMATS.merge!( :datetimedb_short => "%Y-%m-%d %H:%M" )
Time::DATE_FORMATS.merge!( :datetime_filename => "%Y_%m_%d_%H_%M_%S" )
Time::DATE_FORMATS.merge!( :hour => "%H:%M" )

Date::DATE_FORMATS.merge!( :datehuman_long => "%A %-d %B, %Y" )