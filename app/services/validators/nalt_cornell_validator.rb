module Validators
  class NaltCornellValidator < NoSubauthValidator
    SERVICE = 'Cornell'.freeze
    TERM_URI = 'http://lod.nal.usda.gov/nalt/20627'.freeze
    SEARCH_QUERY = 'milk'.freeze

    def self.authority_name
      :NALT_CORNELL
    end

    def self.service
      SERVICE
    end

    def self.term_uri
      TERM_URI
    end

    def self.search_query
      SEARCH_QUERY
    end
  end
end
