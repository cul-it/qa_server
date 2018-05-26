# This class runs a single term scenario and logs the results.
class TermScenarioValidator < ScenarioValidator
  class << self
    include ERB::Util
  end

  TERM_ACTION = 'term'.freeze

  # @param scenario [TermScenario] the scenario to run
  # @param status_log [ScenarioLogger] logger for recording test results
  def initialize(scenario:, status_log:)
    super
  end

  # Run a term scenario and log results.
  def run
    begin
      status = test_status(min_expected_size: scenario.min_result_size) do
        authority.find(scenario.identifier,
                       subauth: scenario.subauthority_name)
      end
      errmsg = (status == PASS) ? '' : 'Term scenario unknown status; cause: Results size < min_result_size'
      log(status, errmsg)
    rescue Exception => e
      log(FAIL, "Exception executing term scenario; cause: #{e.message}")
    end
  end

  private

    def action
      TERM_ACTION
    end
end
