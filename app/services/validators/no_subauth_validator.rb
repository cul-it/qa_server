module Validators
  class NoSubauthValidator < AuthorityValidatorService
    # ABSTRACT:  DO NOT RUN DIRECTLY
    # inherit from this class to run a single test for term and for search

    # DEFINE THE FOLLOWING IN CONCRETE CLASS
    def self.authority_name
      # define this method in concrete class to return authority name as an all upper case symbol
    end

    def self.service
      # define this method in concrete class.  Will appear in results table in the Service column.  Typically returns constants: DIRECT_service or LD4L_service
    end

    def self.term_uri
      # define this method in concrete class to return the term URI to use for the term test
    end

    def self.search_query
      # define this method in concrete class to return the search query to use for the search test
    end
    # END METHODS TO DEFINE IN CONCRETE CLASS

    def self.test_count
      2
    end

    def self.failure_count
      authority = test_authority
      return test_count unless authority

      failures = 0
      failures += 1 unless test_term(authority, term_uri) == PASS
      failures += 1 unless test_search(authority, search_query) == PASS
      failures
    end

    def self.status_data
      authority = test_authority
      return unless authority

      add_status(test_term(authority, term_uri), authority_name, '', service, TERM_ACTION, term_qa_url(authority_name, term_uri, true))
      add_status(test_search(authority, search_query), authority_name, '', service, SEARCH_ACTION, search_qa_url(authority_name, search_query))
    end

    def self.urls
      {
        term: [term_qa_url(authority_name, term_uri, true)],
        search: [search_qa_url(authority_name, search_query)]
      }
    end

    def self.test_authority
      test_authority_status(authority_name, service)
    end
  end
end
