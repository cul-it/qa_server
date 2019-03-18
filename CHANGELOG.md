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
