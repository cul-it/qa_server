module Validators
  class GettyUlanLd4lCacheValidator < NoSubauthValidator
    TERM_URI = 'http://vocab.getty.edu/ulan/500020427'.freeze
    SEARCH_QUERY = 'mark twain'.freeze

    def self.authority_name
      :GETTY_ULAN_LD4L_CACHE
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
