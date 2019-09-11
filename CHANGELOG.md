### 2019-09-11

* set cul-it/qa_server version to 2.2.2
* update to LD4P/qa_server 2.2.2
* add remaining sharevde configs
* remove outdated sharevde configs

### 2019-09-10

* set cul-it/qa_server version to 2.2.1
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
