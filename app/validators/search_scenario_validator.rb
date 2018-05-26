# This class runs a single search scenario and logs the results.
class SearchScenarioValidator < ScenarioValidator
  SEARCH_ACTION = 'search'.freeze

  # @param scenario [SearchScenario] the scenario to run
  # @param status_log [ScenarioLogger] logger for recording test results
  def initialize(scenario:, status_log:)
    super
  end

  # Run a search scenario and log results.
  def run
    begin
      status = test_status(min_expected_size: scenario.min_result_size) do
        authority.search(scenario.query,
                         subauth: scenario.subauthority_name,
                         replacements: scenario.replacements)
      end
      errmsg = (status == PASS) ? '' : 'Search scenario unknown status; cause: Results size < min_result_size'
      log(status, errmsg)
    rescue Exception => e
      log(FAIL, "Exception executing search scenario; cause: #{e.message}")
    end
  end

  private

    def action
      SEARCH_ACTION
    end
end
