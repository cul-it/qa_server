module Validators
  class GeonamesDirectValidator < NoSubauthValidator
    TERM_URI = 'http://sws.geonames.org/261707/'.freeze
    SEARCH_QUERY = 'Ithaca'.freeze

    def self.authority_name
      :GEONAMES_DIRECT
    end

    def self.service
      DIRECT_SERVICE
    end

    def self.term_uri
      TERM_URI
    end

    def self.search_query
      SEARCH_QUERY
    end
  end
end
