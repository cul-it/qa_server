module Validators
  class GettyTgnLd4lCacheValidator < NoSubauthValidator
    TERM_URI = 'http://vocab.getty.edu/tgn/7017750'.freeze
    SEARCH_QUERY = 'memphis'.freeze

    def self.authority_name
      :GETTY_TGN_LD4L_CACHE
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
