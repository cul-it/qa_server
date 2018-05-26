# This class parses the search configuration from the yml file into the parts needed by the search scenario validator.
class SearchScenario < AuthorityScenario

  # @return [String] query being executed by this scenario
  attr_reader :query

  # @return [Hash] replacements parameters used to construct the URL executed by this scenario
  attr_reader :replacements

  MAX_RECORDS = '4'.freeze
  DEFAULT_REPLACEMENTS = { maxRecords: MAX_RECORDS }

  # @param authority [Qa::Authorities::LinkedData::GenericAuthority] the instance of the QA authority
  # @param authoity_name [Symbol] the name of the authority the scenario tests (e.g. :AGROVOC_DIRECT)
  # @param authority_scenario_config [Hash] configurations from the yml file that pertain to all scenarios regardless of type
  # @param scenario_config [Hash] configuration from the yml file that are specific to a search scenario
  def initialize(authority:, authority_name:, authority_scenario_config:, scenario_config:)
    super
    @query = scenario_config['query']
    @subauthority_name = scenario_config['subauth'] || DEFAULT_SUBAUTH
    @min_result_size = scenario_config['result_size'] || MIN_EXPECTED_SIZE
    @replacements = scenario_config['replacements'] || DEFAULT_REPLACEMENTS
  end

  # Generate an example URL that can be called in a browser or through curl
  # @return [String] the example URL
  def url
    subauth = "/#{subauthority_name}" if subauthority?
    prefix = "/qa/search/linked_data/#{authority_name.downcase}#{subauth}"
    "#{prefix}?q=#{query}#{url_replacements}"
  end

  private

    # Convert replacements hash into URL parameters
    def url_replacements
      return "&maxRecords=#{MAX_RECORDS}" unless replacements
      param_replacements = ""
      replacements.each { |k, v| param_replacements += "&#{k}=#{v}" }
      param_replacements
    end

    def subauthority?
      subauthority_name.present?
    end
end

