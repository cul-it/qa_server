module Validators
  class AgrovocDirectValidator < NoSubauthValidator
    TERM_URI = 'http://aims.fao.org/aos/agrovoc/c_9513'.freeze
    SEARCH_QUERY = 'milk'.freeze

    def self.authority_name
      :AGROVOC_DIRECT
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
