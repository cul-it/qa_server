module Validators
  class MeshLd4lCacheValidator < NoSubauthValidator
    TERM_URI = 'http://purl.bioontology.org/ontology/MESH/D002173'.freeze
    SEARCH_QUERY = 'cancer'.freeze

    def self.authority_name
      :MESH_LD4L_CACHE
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
