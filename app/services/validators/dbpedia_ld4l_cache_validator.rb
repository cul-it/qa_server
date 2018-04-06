module Validators
  class DbpediaLd4lCacheValidator < NoSubauthValidator
    TERM_URI = 'http://dbpedia.org/resource/Barack_Obama'.freeze
    SEARCH_QUERY = 'Barack Obama'.freeze

    def self.authority_name
      :DBPEDIA_LD4L_CACHE
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
