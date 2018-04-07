module Validators
  class GettyUlanLd4lCacheValidator < AuthorityValidatorService
    AUTHORITY_NAME = :GETTY_ULAN_LD4L_CACHE
    SERVICE = LD4L_SERVICE

    TERM_URI = 'http://vocab.getty.edu/ulan/500020427'.freeze
    SEARCH_QUERY = 'mark twain'.freeze

    PERSON_SUBAUTH = 'person'.freeze
    ORGANIZATION_SUBAUTH = 'organization'.freeze

    SEARCH_QUERY = 'washington'.freeze
    PERSON_QUERY = SEARCH_QUERY
    ORGANIZATION_QUERY = SEARCH_QUERY

    def self.test_count
      4
    end

    def self.failure_count
      authority = test_authority
      return test_count unless authority

      failures = 0
      failures += 1 unless test_term(authority, TERM_URI) == PASS
      failures += 1 unless test_search(authority, SEARCH_QUERY) == PASS
      failures += 1 unless test_search(authority, PERSON_QUERY, PERSON_SUBAUTH) == PASS
      failures += 1 unless test_search(authority, ORGANIZATION_QUERY, ORGANIZATION_SUBAUTH) == PASS
      failures
    end

    def self.status_data
      authority = test_authority
      return unless authority

      add_status(test_term(authority, TERM_URI), AUTHORITY_NAME, '', SERVICE, TERM_ACTION, term_qa_url(AUTHORITY_NAME, TERM_URI, true))
      add_status(test_search(authority, SEARCH_QUERY), AUTHORITY_NAME, '', SERVICE, SEARCH_ACTION, search_qa_url(AUTHORITY_NAME, SEARCH_QUERY))
      add_status(test_search(authority, PERSON_QUERY, PERSON_SUBAUTH), AUTHORITY_NAME, PERSON_SUBAUTH, SERVICE, SEARCH_ACTION, search_qa_url(AUTHORITY_NAME, PERSON_QUERY, PERSON_SUBAUTH))
      add_status(test_search(authority, ORGANIZATION_QUERY, ORGANIZATION_SUBAUTH), AUTHORITY_NAME, ORGANIZATION_SUBAUTH, SERVICE, SEARCH_ACTION, search_qa_url(AUTHORITY_NAME, ORGANIZATION_QUERY, ORGANIZATION_SUBAUTH))
    end

    def self.urls
      {
          term: [term_qa_url(AUTHORITY_NAME, TERM_URI, true)],
          search: [
              search_qa_url(AUTHORITY_NAME, SEARCH_QUERY),
              search_qa_url(AUTHORITY_NAME, PERSON_QUERY, PERSON_SUBAUTH),
              search_qa_url(AUTHORITY_NAME, ORGANIZATION_QUERY, ORGANIZATION_SUBAUTH),
          ]
      }
    end

    def self.test_authority
      test_authority_status(AUTHORITY_NAME, SERVICE)
    end
  end
end
