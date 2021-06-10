### 6.3.1 (2021-06-10)

* update to LD4P/qa_server 7.9.2
  * BUG FIX: only check for dogear if status is a Hash
* update to LD4P/qa_server 7.9.1
  * BUG FIX: fix compare accuracy fails if either has pending tests
  * add note on the meaning of the dogear on Check Status page

### 6.3.0 (2021-04-16)

* update to LD4P/qa_server 7.9.0
  * Add chart showing simulated graph (in table) of the last 30 days of up-down connection data

### 6.2.0 (2021-04-14)

* update to LD4P/qa_server 7.8.0
  * dogear expected and actual cells when accuracy test is pending

### 6.1.3 (2021-04-14)

* update Spain test to search geographic subauth for MeSH (NLM)

### 6.1.2 (2021-04-14)

* add geographic subauth for MeSH (NLM)

### 6.1.1 (2021-04-14)

* update to LD4P/qa_server 7.7.1
  * fix background colors in historical uptime table

### 6.1.0 (2021-04-13)

* update to LD4P/qa_server 7.7.0
  * remove unused translations
  * show notification when refreshing starts on monitor status page
  * hide data in Authority Connection History for non-active authorities
  * loosen threshold for caution in historical uptime table
  * minor tweaks missed in original sync

### 6.0.0 (2021-04-12)

* update to qa_server v7.6.0 - allows for use of Rails 6
* sync authority configs and validations with definitions in LD4P/qa_server
* many updates to configs and validations based on changes for new indexing approach
* update to Rails 5.2.5 to fix mimemagic gem yank
* update dependencies

### 5.9.2 (2021-01-29)

* sync validation tests with LD4P/qa_server

### 5.9.1 (2020-12-08)

* do not control the width of form elements so tightly
* update LDPaths for GETTY_TGN
* split LOCNAMES_RWO testing into 3 files to avoid timeouts
* sync validation tests with LD4P/qa_server

### 5.9.0 (2020-12-08)

* update to Samvera/QA 5.5.0
  * FIX: do not overwrite passed in replacements hash
  * FIX: encode query for linked data access to OCLC FAST
* update to LD4P/qa_server 7.5.0
  * UI improvements of check_status page
    * pre-populate selection fields with most recently submitted authorities
    * add ability to compare two authorities' accuracy tests in UI
    * update check_status UI to require GO button click to start processing
    * fix javascript to avoid referencing missing elements
  * accuracy test updates
    * accuracy tests default to context=false since it is not required for testing
    * allow accuracy tests through rspec to be marked pending (allows for better regression testing)
    * add pending to failing validation tests such that accuracy_spec passes
    * sync tests with production accuracy tests
    * split locnames_rwo_ld4l_cache into 3 sets of tests of about 9 each to avoid time out
    * add extended context for getty_aat_ld4l_cache and getty_tgn_ld4l_cache
    * add authority locvocabs_ld4l_cache
    * FIX: typo in position and a few syntax errors
    * FIX: adjust result_size for validations where passing tests return less than 200 chars
  * add request_data to status_logger (e.g. query for search, identifier for term)
  * update to latest bixby v3.0
* update to LD4P/qa_server 7.5.1
  * FIX: missing i18n translations

### 5.8.0 (2020-11-06)

* add 48 small LOC vocabs (e.g. carriers, content_types, etc)
* add extended context for getty aat and tgn
* fix validations where results are returned but are too small
* sync auth configs and validations with ld4p/qa_server templates
* temporarily add new_cache auths testing new indexing scheme

### 5.7.0 (2020-09-24)

* add local subauthorities property_attribute and property_type

### 5.6.0 (2020-04-08)

* update to Samvera/QA 5.5.0
  * fixes change of LOC API URLs from http to https
* update to Rails 5.2
* update related dependencies

### 5.5.0 (2020-04-08)

* update to LD4P/qa_server v7.4.0
  * add size and complexity performance statistics (not auto-generated)

### 5.4.0 (2020-04-08)

* remove failing tests as they are due to changes at OCLC
* have wikidata always return with response_header and results
* add ISNI authority
* turn graphs off for production
* update to LD4P/qa_server v7.3.0
  * move graph generation to background jobs

### 5.3.2 (2020-02-22)

* generate the performance graphs
* setup background jobs in all environments
* update to LD4P/qa_server v7.2.1
  * fix graph fails generation when any label is empty string

### 5.3.1 (2020-02-22)

* test new location of graphs in public directory by generating the history graph

### 5.3.0 (2020-02-22)

* update to LD4P/qa_server v7.2.0
  * move generated monitor status graphs from assets to public directory

### 5.2.4 (2020-02-22)

* fix cerl ct prefix to end with /
* update to LD4P/qa_server v7.1.3
  * bug fix for performance datatable never displays

### 5.2.3 (2020-02-22)

* update bundler to 2.1.4 on AWS

### 5.2.2 (2020-02-21)

* update to LD4P/qa_server v7.1.2
  * make configs that return true/false end with ?
  * add tests for configs that weren’t tested
  * fix bugs in config#convert_size_to_bytes in response to testing

### 5.2.1 (2020-02-21)

* remove hardcoded max_performance_cache_size so the value is picked up from ENV

### 5.2.0 (2020-02-21)

* update to LD4P/qa_server v7.1.1
  * fix: empty performance cache after running monitor status tests
* includes changes from LD4P/qa_server v7.1.0  
  * allow performance cache size to be set by environment variable 
  * move generation of history graph to cache_processors
  * log warning in monitor logger if graphs fail to create
  * monitor_status page won't try to display graphs if graph file does not exist

### 5.1.0 (2020-02-19)

* add subauthorities for MeSH
* update to LD4P/qa_server v7.0.0
  * refactor of caching system to simplify the process
  * rename monitor_cache_service to cache_expiry_service
  * move generation of hourly graph to cache_processors
  * move generation of daily and monthly graphs to cache_processors
  * move performance datatable cache control to cache_processors
  * move caching of summary and historical data to cache_processors
  * move caching of test execution marker to cache_processors
  * move performance cache of performance data to cache_processors

### 5.0.0 (2020-02-18)

* add extended context for MeSH authority
* add Ligatus authority
* add CERL authority
* update to LD4P/qa_server 6.2.0
  * use authentication for refreshing monitor tests
  * add performance cache logger
  * exceeding max performance cache size flushing the cache
  * change historical summary to show number of days instead of number of tests

### 4.8.0 (2020-02-13)

* update to LD4P/qa_server 6.0.0
  * refactor to avoid errors and improve performance of monitor status page

### 4.7.6 (2020-01-30)

* update to LD4P/qa_server 5.5.1
  * bugfix - check for nil before calling .each

### 4.7.5 (2020-01-10)

* update to LD4P/qa_server 5.5.0
  * use caching with expiry for all data on monitor status page

### 4.7.4 (2020-01-07)

* update to LD4P/qa_server 5.4.0
  * updates expiration time for tests and calculations
* add Authority URI to loc_names_rwo extended context
* update geonames term URI to use https instead of http
* update copyright to 2020

### 4.7.3 (2019-12-20)

* turn IP logging back on

### 4.7.2 (2019-12-20)

* update to LD4P/qa_server 5.3.0
  * optionally log browser and platform user agent info
* update to Samvera/QA 5.3.1
  * bug fix to handle failure to get location information from request gracefully

### 4.7.1 (2019-12-17)

* update config initializers to no longer suppress performance data
* truncate error messages written to the database instead of raising an exception

### 4.7.0 (2019-12-16)

* update to LD4P/qa_server 5.2.1
  * set monitoring to expire nightly at 3am ET by default
  * save performance data once a day when running monitoring tests
* update to Samvera/QA 5.3.0
  * add a request id to the search and find request headers
  * log exception for graph load failures
  * optionally include IP info at start of search/find linked data requests

### 4.6.0 (2019-12-10)

* update to LD4P/qa_server 5.1.0
  * allow suppression of performance data gathering
* suppress gathering of performance data at startup (manually turn on/off after startup)  

### 4.5.0 (2019-12-6)

* add configuration for database pool size
* update puma dependency

### 4.4.1 (2019-12-3)

* update to LD4P/qa_server 5.0.3
  * bug fix - use correct parameters for search query

### 4.4.0 (2019-12-3)

* disable nalt_cornell authority

### 4.3.0 (2019-12-3)

* update to samvera/qa 5.2.0
  * add optional response header which has pagination information for DISCOGs search
  * add support for Rails 6 
* update to LD4P/qa_server 5.0.2
  * bug fix - move individual params into request header to avoid lost subauths during testing

### 4.2.1 (2019-12-3)

* update to LD4P/qa_server 5.0.1
  * bug fix - force qa to not exclued performance header when find term returns jsonld

### 4.2.0 (2019-11-27)

* add pagination configs to remaining ld4l_cache authorities

### 4.1.0 (2019-11-27)

* add pagination configs for all sharevde authorities

### 4.0.3 (2019-11-22)

* update to LD4P/qa_server 5.0.0
  * prepends for search query updated to retain response_header in results

### 4.0.2 (2019-11-22)

* update to samvera/qa 5.1.1
  * add response header which has pagination information for search and summary info for fetch

### 4.0.1 (2019-11-18)

* make wikidata values an array

### 4.0.0 (2019-11-18)

* updated wikidata extended context format to match linked data module
* update to samvera/qa 5.0.0
  * 4.2.5 was yanked and replaced with 5.0.0
  * discogs extended context format updated to match linked data module
  * added request_header parameter FindTerm #find and SearchQuery #search
* update to LD4P/qa_server 4.0.0
  * updated overrides for FindTerm #find and SearchQuery #search to process new request_header parameter

### 3.1.2 (2019-11-12)

* update to samvera/qa 4.2.5 - discogs extended context format updated to match linked data module

### 3.1.1 (2019-10-17)

* update to samvera/qa 4.2.4 - use real discogs uri whenever available and discogs url when not

### 3.1.0 (2019-10-10)

* update to samvera/qa 4.2.3
* update to LD4P/qa_server 3.0.3

### 2019-10-02

* add RDA Registry authority

### 2.2.5 (2019-09-18)

* add loc prefix to LCDGT
* change LCDGT earlier form to use authoritativeLabel instead of variantLabel

### 2.2.4 (2019-09-12)

* add extended context to LCMPT
* make LCNAF RWO and authority focused configs match indexing spreadsheet
* add pagination to all authority configs

### 2.2.3 (2019-09-11)

* update to LD4P/qa_server 2.2.3
* expand parent URIs to labels in extended context for GEONAMES
* add sharevde config for harry ransom

### 2.2.2 (2019-09-11)

* update to LD4P/qa_server 2.2.2
* add remaining sharevde configs
* remove outdated sharevde configs

### 2.2.1 (2019-09-10)

* minor tweaks to wikidata, discogs, and bioportal mesh
* update to qa_server 2.2.1
* basic wikidata access
* add sharevde configs for stanford, ucdavis, ucsd, yale

### 2019-08-12

* update validations for sharevde data

### 2019-08-09

* update sharevde extended context to include context for all subauths
* add sharevde for alberta, duke, frick, cornell, cu boulder 
* add n3 support

### 2019-08-08

* add config to sharevde data for Frick
* add extended context and pagination to LCDGT
* remove all subauthorities, add extended context and pagination for LCSH
* add subauthorities, extended context, and pagination to LCGFT

### 2019-06-13

* Add extended context for sharevde configs

### 2019-06-11

* remove golden notebook from cornell sharevde tests
* update to use qa 4.2 (adds discogs), qa_server 2.1, & configs to 2.1
  
### 2019-05-21

* update mesh to nlm
* add `encode: true` to search query param for all 2.0 configs
* add accuracy tests for locperformance_ld4l_cache (LCMPT)

### 2019-04-05

* add parentheses to complex ldpath to fix parse error

### 2019-03-18

* add ShareVDE works/instances for Cornell, Stanford, and UCSD
* update ld4p/qa_server to 2.0.0 
  * adds css style for pingdom monitoring
  * update qa to 4.0.0
  * update configs to QA_CONFIG_VERSION 2.0
* update code to work with qa 4.0.0

### 2019-01-11

* add accuracy tests for demographics
* change locnames to use skos:prefLabel instead of madsrdf:authoritativeLabel

### 2018-12-11

* add CORS routes for fetch

### 2018-11-22

* update qa_server to 1.2.2
* fix invalid json by removing extraneous commas
* allow specifying http protocol in api doc
* disable agrovoc_direct authority
* change MeSH to fetch by URI instead of ID
* use mads/rdf authoritativeLabel for LOC performance term fetch
* Add LC music performance and LC demographics vocabularies

### 2018-11-12

* update qa min_context
  * adds support for terms to be fetched as `application/ld+json`

### 2018-11-02

* temporary pin of concurrent-ruby gem to 1.0.5 (bundler conflicts)
