class AuthorityValidationController < ApplicationController
  attr_reader :status_data

  class_attribute :validator_class,
                  :lister_class,
                  :logger_class

  self.validator_class = AuthorityValidatorService
  self.lister_class = AuthorityListerService
  self.logger_class = ScenarioLogger

  private

    def status_log
      @status_log ||= logger_class.new
    end

    def status_data_from_log
      @status_data = status_log.to_a
    end

    def authorities_list
      @authorities_list ||= lister_class.authorities_list
    end

    def validate(authorities_list)
      return if authorities_list.blank?
      authorities_list.each { |auth_name| validate_authority(auth_name) }
    end

    def validate_authority(auth_name)
      validator_class.run(authority_name: auth_name, status_log: status_log)
    end

    def list(authorities_list)
      return if authorities_list.blank?
      authorities_list.each { |auth_name| list_scenarios(auth_name) }
    end

    def list_scenarios(auth_name)
      lister_class.scenarios_list(authority_name: auth_name, status_log: status_log)
    end
end
