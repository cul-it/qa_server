# QA Server

This app can be installed to serve as a Questioning Authority (QA) Server for accessing external authorities.  It is part of a larger architecture supporting linked data authority access.  See [ld4l:linked_data_authorities]() for more information on the full architecture.  From this app, you can send a search query and get back multiple results OR you can fetch a single term.

## Setup

### Compatibility

* Ruby 2.4 or the latest 2.3 version is recommended. Later versions may also work.
* Rails 5 is required. We recommend the latest Rails 5.0 release.

### Installation Instructions

* clone this app from github
* run `bundle install`
* run `rake db:migrate`

### To Start the Server

* run `rails s`

To stop, use `<ctrl><c>` in the terminal window where `rails s` started.

## Supported Authorities

### Authorities that come with QA

There are a few authorities that are part of the QA gem.  All directly access the external authority.

* direct access to OCLC FAST
  * TEST QUERY: http://localhost:3000/qa/search/linked_data/oclc_fast?q=Cornell&maximumRecords=3
  * TEST FETCH: http://localhost:3000/qa/show/linked_data/oclc_fast/2
* direct access to AGROVOC
  * TEST QUERY: http://localhost:3000/qa/search/linked_data/agrovoc?q=milk&lang=en&maxRecords=3
  * TEST FETCH: http://localhost:3000/qa/show/linked_data/agrovoc/c_9513
* direct access to Library of Congress for term fetch only
  * TEST QUERY: _not supported_
  * TEST FETCH: http://localhost:3000/qa/show/linked_data/loc/no2002053226
  
### Predefined Configurations in ld4l-labs/linked_data_authorities

Configurations exist for a number of other common authorities that can be copied into your QA Server.  When possible, each configuration comes in two varieties...

* _AUTHORITY_NAME__direct - configuration can be used as is to access the external authority directly
* _AUTHORITY_NAME__local - configuration may require an update to the search:url:template and term:url:template to point to your local server.  More information on this in [ld4l-labs/linked_data_authorities](https://github.com/ld4l-labs/linked_data_authorities/blob/master/README.md)

Copy predefined configurations...
 
```
FROM:  https://github.com/ld4l-labs/linked_data_authorities/qa_*/config/authorities/linked_data
TO:    this_app/config/authorities/linked_data
```

TEST QUERY: http://localhost:3000/qa/search/linked_data/_AUTHORITY_NAME__direct?q=your_query&maxRecords=3
TEST FETCH: http://localhost:3000/qa/show/linked_data/_AUTHORITY_NAME__direct/_ID_OR_URI_

Substitute the name of the configuration file for _AUTHORITY_NAME__direct in the URL.
Substitute a valid ID or URI for _ID_OR_URI_ in the URL, as appropriate.  NOTE: Some authorities expect an ID and others expect a URI.

### Write your own configuration

#### Authority requirements

If you want to access an authority for which there isn't a configuration, you can write your own.  There are only two requirements to be able to access an authority.
 
1. For search access, the authority must have a URL API defined that accepts a string search query.
1. For term access, the authority must either support accessing the URI for the term OR provide a URL API which takes an id or URI as a parameter.
1. For both search and term, the returned results must be in a linked data format.

#### Writing the configuration

Instructions for writing your own configuration can be found in the ([QA gem README](https://github.com/samvera/questioning_authority#configuring-a-lod-authority)).  You are encouraged to use consistent names for common prameters, including the following...

* q - search query value that the user types
* maxRecords - to identify the max number of records for the authority to return if the authority supports limiting the number of returned records
* lang - limit string values to the identified language if the authority supports language specific requests

#### Using the configuration

Add your new configuration to `this_app/config/authorities/linked_data`

TEST QUERY: http://localhost:3000/qa/search/linked_data/_AUTHORITY_NAME__direct?q=your_query&maxRecords=3
TEST FETCH: http://localhost:3000/qa/show/linked_data/_AUTHORITY_NAME__direct/_ID_OR_URI_

Substitute the name of the configuration file for _AUTHORITY_NAME__direct in the URL.
Substitute a valid ID or URI for _ID_OR_URI_ in the URL, as appropriate.  NOTE: Some authorities expect an ID and others expect a URI.


### Non linked-data authority access

QA Server is based on the [Questioning Authority gem](https://github.com/samvera/questioning_authority).  As such, it can be used to serve up controlled vocabularies defined in one of three ways.

1. locally defined controlled vocabularies
1. specifically supported external authorities (non-linked data)
1. configurable access to linked data authorities

This document addresses the use of QA Server app for access to linked data authorities.  You can reference Questioning Authorities
[documentation](https://github.com/samvera/questioning_authority/blob/master/README.md) for more information on the other uses.

## Expected Results

### Search Query Results

This search query... http://localhost:3000/qa/search/linked_data/oclc_fast/personal_name?q=Cornell&maximumRecords=3
              
will return results like...
 
```
[{"uri":"http://id.worldcat.org/fast/5140","id":"5140","label":"Cornell, Joseph"},
 {"uri":"http://id.worldcat.org/fast/72456","id":"72456","label":"Cornell, Sarah Maria, 1802-1832"},
 {"uri":"http://id.worldcat.org/fast/409667","id":"409667","label":"Cornell, Ezra, 1807-1874"}]
```

### Term Fetch Results

This term fetch... http://localhost:3000/qa/show/linked_data/oclc_fast/530369
                   
will return results like...

```
{"uri":"http://id.worldcat.org/fast/530369",
 "id":"530369","label":"Cornell University",
 "altlabel":["Ithaca (N.Y.). Cornell University","Kornelʹskii universitet","Kʻang-nai-erh ta hsüeh"],
 "sameas":["http://id.loc.gov/authorities/names/n79021621","https://viaf.org/viaf/126293486"],
 "predicates":{
   "http://purl.org/dc/terms/identifier":"530369",
   "http://www.w3.org/2004/02/skos/core#inScheme":["http://id.worldcat.org/fast/ontology/1.0/#fast","http://id.worldcat.org/fast/ontology/1.0/#facet-Corporate"],
   "http://www.w3.org/1999/02/22-rdf-syntax-ns#type":"http://schema.org/Organization",
   "http://www.w3.org/2004/02/skos/core#prefLabel":"Cornell University",
   "http://schema.org/name":["Cornell University","Ithaca (N.Y.). Cornell University","Kornelʹskii universitet","Kʻang-nai-erh ta hsüeh"],
   "http://www.w3.org/2004/02/skos/core#altLabel":["Ithaca (N.Y.). Cornell University","Kornelʹskii universitet","Kʻang-nai-erh ta hsüeh"],
   "http://schema.org/sameAs":["http://id.loc.gov/authorities/names/n79021621","https://viaf.org/viaf/126293486"]}}
```
