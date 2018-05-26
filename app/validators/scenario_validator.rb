# ABSTRACT class providing common methods for running a scenario of any type.
class ScenarioValidator
  PASS = :good
  FAIL = :bad
  UNKNOWN = :unknown

  # @param scenario [SearchScenario | TermScenario] the scenario to run
  # @param status_log [ScenarioLogger] logger for recording test results
  def initialize(scenario:, status_log:)
    @status_log = status_log
    @scenario = scenario
  end

  # Runs the test in the block passed by the specific scenario type.
  # @return [Symbol] :good or :unknown based on whether enough results were returned
  def test_status(min_expected_size: MIN_EXPECTED_SIZE)
    results = yield if block_given?
    results.to_s.length > min_expected_size ? PASS : UNKNOWN
  end

  # Log the structure of the scenario without running the scenario test.
  def log_without_running
    log
  end

  private

    # Log the structure of the scenario and status of a test run.
    def log(status = nil, errmsg = nil)
      status_log.add(authority_name: authority_name,
                     status: status,
                     subauth: subauthority_name,
                     service: service,
                     action: action,
                     url: url,
                     error_message: errmsg)
    end

    def authority
      scenario.authority
    end

    def authority_name
      scenario.authority_name.upcase
    end

    def subauthority_name
      scenario.subauthority_name
    end

    def service
      scenario.service
    end

    def url
      scenario.url
    end

    def action
      # ABSTRACT - must be implemented by scenario validator for specific types
    end

    def status_log
      @status_log
    end

    def scenario
      @scenario
    end
end
