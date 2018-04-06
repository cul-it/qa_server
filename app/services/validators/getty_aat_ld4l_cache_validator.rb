module Validators
  class GettyAatLd4lCacheValidator < NoSubauthValidator
    TERM_URI = 'http://vocab.getty.edu/aat/300265730'.freeze
    SEARCH_QUERY = 'amphora'.freeze

    def self.authority_name
      :GETTY_AAT_LD4L_CACHE
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
