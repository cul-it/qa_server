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
