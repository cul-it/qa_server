# Provide service methods for running a a set of validation scenarios for an authority.
class AuthorityValidatorService

  # Run the set of validation scenarios for an authority logging the results
  # @param authority_name [String] the name of the authority
  # @param status_log [ScenarioLogger] the log that will hold the data about the scenarios and test results
  def self.run(authority_name:, status_log:)
    scenarios = ScenariosLoaderService.load(authority_name: authority_name, status_log: status_log)
    return if scenarios.blank?
    run_terms(scenarios, status_log)
    run_searches(scenarios, status_log)
  end


  private

    def self.run_terms(scenarios, status_log)
      scenarios.term_scenarios.each { |scenario| TermScenarioValidator.new(scenario: scenario, status_log: status_log).run }
    end

    def self.run_searches(scenarios, status_log)
      scenarios.search_scenarios.each { |scenario| SearchScenarioValidator.new(scenario: scenario, status_log: status_log).run }
    end
end
