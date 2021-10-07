# frozen_string_literal: true
# This presenter class provides all data needed by the view that show the list of authorities.
module PrependedPresenters::AuthorityListPresenter
  # Override QaServer::AuthorityListPresenter#urls_data method
  # @return [Array<Hash>] A list of status data for each scenario tested plus
  #                       wikidata, discogs, and local yml auths.
  def urls_data
    url_data = @urls_data
    url_data << wikidata_search
    url_data << discogs_release_term
    url_data << discogs_master_term
    url_data << discogs_release_search
    url_data << discogs_master_search
    url_data << property_attribute_terms
    url_data << property_type_terms
    url_data << publisher_cities_select_listsearch
    url_data
  end

  def wikidata_search
    {:type=>:connection,
     :status=>"",
     :authority_name=>:WIKIDATA,
     :subauthority_name=>"item",
     :service=>"NOT linked data",
     :action=>"search",
     :url=>"/authorities/search/wikidata/item?q=milk",
     :expected=>nil,
     :actual=>nil,
     :target=>nil,
     :err_message=>"",
     :request_run_time=>nil,
     :normalization_run_time=>nil}
  end

  def discogs_release_term
    {:type=>:connection,
     :status=>"",
     :authority_name=>:DISCOGS,
     :subauthority_name=>"release",
     :service=>"NOT linked data",
     :action=>"term",
     :url=>"authorities/show/discogs/release/6523540",
     :expected=>nil,
     :actual=>nil,
     :target=>nil,
     :err_message=>"",
     :request_run_time=>nil,
     :normalization_run_time=>nil}
  end

  def discogs_master_term
    {:type=>:connection,
     :status=>"",
     :authority_name=>:DISCOGS,
     :subauthority_name=>"master",
     :service=>"NOT linked data",
     :action=>"term",
     :url=>"authorities/show/discogs/master/144098",
     :expected=>nil,
     :actual=>nil,
     :target=>nil,
     :err_message=>"",
     :request_run_time=>nil,
     :normalization_run_time=>nil}
  end

  def discogs_release_search
    {:type=>:connection,
     :status=>"",
     :authority_name=>:DISCOGS,
     :subauthority_name=>"release",
     :service=>"NOT linked data",
     :action=>"search",
     :url=>"authorities/search/discogs/release?q=sinatra",
     :expected=>nil,
     :actual=>nil,
     :target=>nil,
     :err_message=>"",
     :request_run_time=>nil,
     :normalization_run_time=>nil}
  end

  def discogs_master_search
    {:type=>:connection,
     :status=>"",
     :authority_name=>:DISCOGS,
     :subauthority_name=>"master",
     :service=>"NOT linked data",
     :action=>"search",
     :url=>"authorities/search/discogs/master?q=sinatra",
     :expected=>nil,
     :actual=>nil,
     :target=>nil,
     :err_message=>"",
     :request_run_time=>nil,
     :normalization_run_time=>nil}
  end

  def property_attribute_terms
    {:type=>:connection,
     :status=>"",
     :authority_name=>:PROPERTY_ATTRIBUTE,
     :subauthority_name=>"",
     :service=>"NOT linked data",
     :action=>"terms",
     :url=>"/authorities/terms/local/property_attribute",
     :expected=>nil,
     :actual=>nil,
     :target=>nil,
     :err_message=>"",
     :request_run_time=>nil,
     :normalization_run_time=>nil}
  end

  def property_type_terms
    {:type=>:connection,
     :status=>"",
     :authority_name=>:PROPERTY_TYPE,
     :subauthority_name=>"",
     :service=>"NOT linked data",
     :action=>"terms",
     :url=>"/authorities/terms/local/property_type",
     :expected=>nil,
     :actual=>nil,
     :target=>nil,
     :err_message=>"",
     :request_run_time=>nil,
     :normalization_run_time=>nil}
  end

  def publisher_cities_select_list_search
    {:type=>:connection,
     :status=>"",
     :authority_name=>:PUBLISHER_CITIES_SELECT_LIST,
     :subauthority_name=>"",
     :service=>"NOT linked data",
     :action=>"search",
     :url=>"/authorities/search/local/publisher_cities_select_list?q=Paris",
     :expected=>nil,
     :actual=>nil,
     :target=>nil,
     :err_message=>"",
     :request_run_time=>nil,
     :normalization_run_time=>nil}
  end
end
