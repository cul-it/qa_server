module Validators
  class NaltLd4lCacheValidator < NoSubauthValidator
    TERM_URI = 'http://lod.nal.usda.gov/nalt/20627'.freeze
    SEARCH_QUERY = 'milk'.freeze

    def self.authority_name
      :NALT_LD4L_CACHE
    end

    def self.service
      LD4L_SERVICE
    end

    def self.term_uri
      TERM_URI
    end

    def self.search_query
      SEARCH_QUERY
    end
  end
end
