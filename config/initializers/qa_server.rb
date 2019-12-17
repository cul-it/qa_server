# frozen_string_literal: true
QaServer.config do |config|
  # Displays a graph of historical test data when true
  # @param [Boolean] display history graph when true
  config.display_historical_graph = false

  # Displays a datatable of historical test data when true
  # @param [Boolean] display history datatable when true
  config.display_historical_datatable = true

  # Displays a graph of performance test data when true
  # @param [Boolean] display performance graph when true
  config.display_performance_graph = false

  # Displays a datatable of performance test data when true
  # @param [Boolean] display performance datatable when true
  config.display_performance_datatable = true

  # Additional menu items to add to the main navigation menu's set of left justified menu items
  # @param [Array<Hash<String,String>>] array of menu items to append with hash label: is menu item label to display and hash url: is URL for the menu item link
  config.navmenu_extra_leftitems = [
    { label: 'API Documentation', url: '/qa/apidoc/' }
  ]

  config.suppress_performance_gathering = false

  # Preferred time zone for reporting historical data and performance data
  # @param [String] time zone name
  # @see https://api.rubyonrails.org/classes/ActiveSupport/TimeZone.html for possible values of TimeZone names
  # config.preferred_time_zone_name = 'Eastern Time (US & Canada)'

  # Preferred hour to run monitoring tests
  # @param [Integer] count of hours from midnight (0-23 with 0=midnight)
  # @example
  #   For preferred_time_zone_name of 'Eastern Time (US & Canada)', use 3 for slow down at midnight PT/3am ET
  #   For preferred_time_zone_name of 'Pacific Time (US & Canada)', use 0 for slow down at midnight PT/3am ET
  # config.hour_offset_to_run_monitoring_tests = 3

end
