## Ontology Documentation

The JudaicaLink Ontology can be obtained via [http://ontology.judaicalink.org/](http://ontology.judaicalink.org)

This is the main ontology document. All other representations are generated automatically from this document.

- [Turtle](judaicalink-ontology.ttl)

### Namespaces
The following namespaces are used in this ontology:

```
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix skos: <http://www.w3.org/2004/02/skos/core#> .
@prefix owl: <http://www.w3.org/2002/07/owl#> .
@prefix gndo: <http://d-nb.info/standards/elementset/gnd#> .
@prefix jl: <http://data.judaicalink.org/ontology/> .
@prefix foaf: <http://xmlns.com/foaf/0.1/> .
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix geo: <http://www.opengis.net/ont/geosparql#> .
@prefix void: <http://rdfs.org/ns/void#> .
```

### Concept

Class: skos:Concept


#### skos:altLabel
```
skos:altLabel
    a rdf:Property ;
    rdfs:label "alternative label"@en ;
    rdfs:comment "Alternative writing format or language of the preferred label of a person or concept"@en ;
    rdfs:range rdfs:Literal .
```
#### skos:prefLabel
```
skos:prefLabel
    a rdf:Property ;
    rdfs:label "preferred label"@en ;
    rdfs:comment "The label that is preferred to be used for a person or concept"@en ;
    rdfs:range rdfs:Literal .
```
#### skos:related
```
skos:related
    a rdf:Property ;
    rdfs:label "has related"@en ;
    rdfs:comment "used to assert an associative link between two skos concepts"@en ;
    rdfs:range skos:Concept .
```
#### skos:scopeNote
```
skos:scopeNote
    a rdf:Property ;
    rdfs:label "scope note"@en ;
    rdfs:comment "Notes are used to provide information relating to skos concepts"@en ;
    rdfs:range rdfs:Literal .
```
#### skos:broader
```
skos:broader
    a rdf:Property ;
    rdfs:label "has broader"@en ;
    rdfs:comment "used to indicates that one skos concept is in some way more general (broader) than the other"@en  ;
    rdfs:range skos:Concept .
```
#### skos:narrower
```
skos:narrower
    a rdf:Property ;
    rdfs:label "has narrower"@en ;
    rdfs:comment "used to indicates that one skos concept is in some way less general (narrower) than the other"@en ;
    rdfs:range skos:Concept .
```
#### foaf:primaryTopic
```
foaf:primaryTopic
    a rdf:Property ;
    rdfs:label "primary topic"@en ;
    rdfs:comment "The primary topic of some page or document"@en ;
    rdfs:range owl:Thing .
```
#### owl:sameAs
```
owl:sameAs
    a rdf:Property ;
    rdfs:label "same as"@en ;
    rdfs:comment "These constructs may be used to create a number of different names that refer to the same individual"@en ;
    rdfs:range owl:Thing .
```
#### dcterms:identifier
```
dcterms:identifier
    a rdf:Property ;
    rdfs:label "identifier"@en ;
    rdfs:comment "An unambiguous reference to the resource within a given context"@en ;
    rdfs:range rdfs:Literal .
```
#### dcterms:subject
```
dcterms:subject
    a rdf:Property ;
    rdfs:label "subject"@en ;
    rdfs:comment "The topic of the resource, category or subject heading that further describes this resource. (broader category used to describe ) "@en ;
    rdfs:range owl:Thing .
```
#### jl:describedAt
```
jl:describedAt
    a rdf:Property ;
    rdfs:label "described at"@en ;
    rdfs:comment "Link to textual resource of encyclopedia article"@en ;
    rdfs:range foaf:Document .
```
#### jl:hasAbstract
```
jl:hasAbstract
    a rdf:Property ;
    rdfs:label "has abstract"@en ;
    rdfs:comment "The abstract of the article in which the concept or the person is described "@en ;
    rdfs:range rdfs:Literal .
```
#### jl:hasCategory
```
jl:hasCategory
    a rdf:Property ;
    rdfs:label "has category "@en ;
    rdfs:comment "The category to which the concept was assigned to in the original data source"@en ;
    rdfs:range skos:Concept .
```
#### jl:referTo
```
jl:referTo
    a rdf:Property ;
    rdfs:label "refer to"@en ;
    rdfs:comment "Used for redirection of one concept to another concept mostly in encyclopedias (when there is a name change or other reasons)"@en ;
    rdfs:range skos:Concept .
```
#### geo:asWKT
```
geo:asWKT
    a rdf:Property ;
    rdfs:label "asWKT"@en ;
    rdfs:comment "The WKT serialization of a geometry"@en ;
    rdfs:range geo:wktLiteral .
```
#### jl:lat
```
jl:lat
    a rdf:Property ;
    rdfs:label "latitude"@en ;
    rdfs:comment "Latitude of a place or resource, in decimal degrees."@en ;
    rdfs:range xsd:decimal .
```
#### jl:lon
```
jl:lon
    a rdf:Property ;
    rdfs:label "longitude"@en ;
    rdfs:comment "Longitude of a place or resource, in decimal degrees."@en ;
    rdfs:range xsd:decimal .
```
#### jl:hasAnnotation
```
jl:hasAnnotation
    a rdf:Property ;
    rdfs:label "has annotation"@en ;
    rdfs:comment "An annotation to the triple"@en ;
    rdfs:range rdfs:Literal .
```
### Entity pages

Class: jl:EntityPage

An entity page is the JudaicaLink resource for one person, place, organisation, work or subject: it brings together
the records that the datasets have about it (`jl:represents`) and repeats their main facts (names, dates, places,
identifiers), chosen by a fixed precedence of the datasets. Entity pages are made by the dataset `ep`, one version at a
time; their IRIs (`http://data.judaicalink.org/data/ep/<number>`) stay stable from version to version. When the
records show that two entity pages stand for the same entity, one is merged into the other (`jl:mergedInto`, the older
IRI is kept); when they show that an entity page stood for several entities, it is split (`jl:splitInto`); an entity
page that no longer stands for a person, place, organisation, work or subject is retired (`jl:retiredDate`). Each of
these is stated once, with the date of the version that made the change; an IRI is never used again. Example (from
the version 2026-10-12 of `ep`): the entity page of 2021 for Marseille also held a person of the Russian Jewish
Encyclopedia, the composer Paul Marselle, linked to the city by his name; it was split into a page for the city and
one for the composer. The GND record of Johanan ben Zakkai had a page of its own; it was merged into his page.

    <http://data.judaicalink.org/data/ep/1686052>
        a jl:EntityPage, jl:Place ;
        skos:prefLabel "Marseille" ;
        jl:represents <http://data.judaicalink.org/data/dbpedia/Marseille>, <http://data.judaicalink.org/data/geo-coordinates/Marseille> .

    <http://data.judaicalink.org/data/ep/2779279>
        a jl:EntityPage, foaf:Person ;
        jl:represents <http://data.judaicalink.org/data/rujen/marselj> .

    <http://data.judaicalink.org/data/ep/1000242>
        jl:splitInto <http://data.judaicalink.org/data/ep/1686052>, <http://data.judaicalink.org/data/ep/2779279> ;
        jl:splitDate "2026-10-12"^^xsd:date .

    <http://data.judaicalink.org/data/ep/1009940>
        jl:mergedInto <http://data.judaicalink.org/data/ep/1005344> ;
        jl:mergeDate "2026-10-12"^^xsd:date .

#### jl:EntityPage
```
jl:EntityPage a owl:Class ;
    rdfs:label "entity page"@en ;
    rdfs:comment "The JudaicaLink resource for one person, place, organisation, work or subject, which brings together the records of the datasets about it (jl:represents). Its IRI stays stable; a page that turns out to be the same as another is merged into it (jl:mergedInto), one that turns out to stand for several entities is split (jl:splitInto), one that no longer stands for an entity is retired (jl:retiredDate)."@en .
```
#### jl:Place
```
jl:Place a owl:Class ;
    rdfs:label "place"@en ;
    rdfs:comment "A place: a settlement, region, country or other geographic entity. Used for records and entity pages."@en .
```
#### jl:Work
```
jl:Work a owl:Class ;
    rdfs:label "work"@en ;
    rdfs:comment "A work: a text, composition or other creation, as described by a record (e.g. a name-title authority record). Used for records and entity pages."@en .
```
#### jl:Subject
```
jl:Subject a owl:Class ;
    rdfs:label "subject"@en ;
    rdfs:comment "A subject: a topic or concept that is the entity of an entity page, e.g. described by an article of an encyclopedia."@en .
```
#### jl:represents
```
jl:represents
    a rdf:Property ;
    rdfs:label "represents"@en ;
    rdfs:comment "A record of a dataset that the entity page brings together. All records that an entity page represents describe the same entity; the facts on the page are chosen from them."@en ;
    rdfs:domain jl:EntityPage ;
    rdfs:range jl:Resource .
```
#### jl:mergedInto
```
jl:mergedInto
    a rdf:Property ;
    rdfs:label "merged into"@en ;
    rdfs:comment "The entity page into which this former entity page was merged. Both stand for the same entity, so this IRI can be redirected to it; chains of merges are followed. Stated with jl:mergeDate."@en ;
    rdfs:range jl:EntityPage .
```
#### jl:mergeDate
```
jl:mergeDate
    a rdf:Property ;
    rdfs:label "merge date"@en ;
    rdfs:comment "The date of the version of the entity pages in which this entity page was merged into another (jl:mergedInto)."@en ;
    rdfs:range xsd:date .
```
#### jl:splitInto
```
jl:splitInto
    a rdf:Property ;
    rdfs:label "split into"@en ;
    rdfs:comment "An entity page into which this former entity page was split: it turned out to stand for several entities, which were not known to be different when it was made. Each part has its own entity page (one statement per part); the IRI is not redirected, as it has several targets. Stated with jl:splitDate."@en ;
    rdfs:range jl:EntityPage .
```
#### jl:splitDate
```
jl:splitDate
    a rdf:Property ;
    rdfs:label "split date"@en ;
    rdfs:comment "The date of the version of the entity pages in which this entity page was split (jl:splitInto)."@en ;
    rdfs:range xsd:date .
```
#### jl:retiredDate
```
jl:retiredDate
    a rdf:Property ;
    rdfs:label "retired date"@en ;
    rdfs:comment "The date of the version of the entity pages from which this IRI is no longer an entity page, because its records are not persons, places, organisations, works or subjects (e.g. a mention or a page of a journal). The IRI stays resolvable and is never used again."@en ;
    rdfs:range xsd:date .
```


### Person

Class: foaf:Person

#### gnd:gndIdentifier
```
gndo:gndIdentifier
    a rdf:Property ;
    rdfs:label "gnd identifier"@en ;
    rdfs:comment "The identifier of the person or concept in the Integrated Authority File of the German National Library (GND)"@en ;
    rdfs:range rdfs:Literal .
```
#### jl:birthDate
```
jl:birthDate
    a rdf:Property ;
    rdfs:label "birth date"@en ;
    rdfs:comment "The date of birth of the person "@en ;
    rdfs:range rdfs:Literal .
```
#### jl:birthYear
```
jl:birthYear
    a rdf:Property ;
    rdfs:label "birth year"@en ;
    rdfs:comment "The year of birth of the person."@en ;
    rdfs:range xsd:gYear .
```
#### jl:deathDate
```
jl:deathDate
    a rdf:Property ;
    rdfs:label "death date"@en ;
    rdfs:comment "The date of death of the person"@en ;
    rdfs:range rdfs:Literal .
```
#### jl:deathYear
```
jl:deathYear
    a rdf:Property ;
    rdfs:label "death year"@en ;
    rdfs:comment "The year of death of the person."@en ;
    rdfs:range xsd:gYear .
```
Normalised dates: `jl:birthDate` and `jl:deathDate` are free text as given by the sources. A complementary dataset
(records-normalized) adds typed values next to them, so that dates can be compared and sorted; the original values
stay. Example (a record of djh):

    <http://data.judaicalink.org/data/djh/abudiente-mose-gideon>
        jl:birthDate "ca. 1610" ;
        jl:birthDateNormalized "1610"^^xsd:gYear ;
        jl:birthDateUncertain "true"^^xsd:boolean ;
        jl:deathDate "4.3.1688" ;
        jl:deathDateNormalized "1688-03-04"^^xsd:date .

#### jl:birthDateNormalized
```
jl:birthDateNormalized
    a rdf:Property ;
    rdfs:label "normalised birth date"@en ;
    rdfs:comment "The birth date of the person as xsd:date, xsd:gYearMonth or xsd:gYear, derived from the free text of jl:birthDate, which stays as it is."@en ;
    rdfs:range rdfs:Literal .
```
#### jl:birthDateUncertain
```
jl:birthDateUncertain
    a rdf:Property ;
    rdfs:label "birth date uncertain"@en ;
    rdfs:comment "True if the source marks the birth date as uncertain or approximate (e.g. ca., ?) or if it was converted from a Hebrew year, which spans two Gregorian years."@en ;
    rdfs:range xsd:boolean .
```
#### jl:deathDateNormalized
```
jl:deathDateNormalized
    a rdf:Property ;
    rdfs:label "normalised death date"@en ;
    rdfs:comment "The death date of the person as xsd:date, xsd:gYearMonth or xsd:gYear, derived from the free text of jl:deathDate, which stays as it is."@en ;
    rdfs:range rdfs:Literal .
```
#### jl:deathDateUncertain
```
jl:deathDateUncertain
    a rdf:Property ;
    rdfs:label "death date uncertain"@en ;
    rdfs:comment "True if the source marks the death date as uncertain or approximate (e.g. ca., ?) or if it was converted from a Hebrew year, which spans two Gregorian years."@en ;
    rdfs:range xsd:boolean .
```
#### jl:birthLocation 
```
jl:birthLocation 
    a rdf:Property ;
    rdfs:label "birth location"@en ;
    rdfs:comment "The location of birth of the person"@en ;
    rdfs:range rdfs:Literal .
```
#### jl:birthLocationURI
```
jl:birthLocationURI
    a rdf:Property ;
    rdfs:label "birth location URI"@en ;
    rdfs:comment "URI of the place of birth of the person."@en ;
    rdfs:range rdfs:Resource .
```
#### jl:deathLocation 
```
jl:deathLocation 
    a rdf:Property ;
    rdfs:label "death location"@en ;
    rdfs:comment "The location of death of the person"@en ;
    rdfs:range rdfs:Literal .
```
#### jl:deathLocationURI
```
jl:deathLocationURI
    a rdf:Property ;
    rdfs:label "death location URI"@en ;
    rdfs:comment "URI of the place of death of the person."@en ;
    rdfs:range rdfs:Resource .
```
#### jl:occupation
```
jl:occupation
    a rdf:Property ;
    rdfs:label "occupation"@en ;
    rdfs:comment "The occupation of the person "@en ;
    rdfs:range rdfs:Literal .
```
#### jl:occupationURI
```
jl:occupationURI
    a rdf:Property ;
    rdfs:label "occupation URI"@en ;
    rdfs:comment "The occupation of the person as an IRI, e.g. an occupation concept; jl:occupation is the occupation as text (as jl:birthLocationURI is the place of birth as an IRI next to jl:birthLocation)."@en ;
    rdfs:range rdfs:Resource .
```
#### jl:hasPublication
```
jl:hasPublication
    a rdf:Property ;
    rdfs:label "has publication"@en ;
    rdfs:comment "The publications of the person"@en ;
    rdfs:range rdfs:Literal .
```

### Document

Class: foaf:Document

#### foaf:primaryTopic
```
foaf:primaryTopic
    a rdf:Property ;
    rdfs:label "primary topic"@en ;
    rdfs:comment "The primary topic of some page or document"@en ;
    rdfs:range owl:Thing .
```
#### rdfs:label
```
rdfs:label
    a rdf:Property ;
    rdfs:label "label"@en ;
    rdfs:comment "used to provide a human-readable version of a resource's name"@en ;
    rdfs:range rdfs:Literal .
```
#### dcterms:created
```
dcterms:created
    a rdf:Property ;
    rdfs:label "created"@en ;
    rdfs:comment "Date of creation of the resource"@en ;
    rdfs:range rdfs:Literal .
```


#### jl:isOnPage
```
jl:isOnPage
    a rdf:Property ;
    rdfs:label "is on page"@en ;
    rdfs:comment "Page or page range on which the resource (e.g. an article or reference) appears."@en ;
    rdfs:range rdfs:Literal .
```

### Annotation

Class:Annotations

#### jl:Annotation
```
jl:Annotation a owl:Class ;
  rdfs:label "Annotation" .
```
#### jl:text
```
jl:text a owl:DatatypeProperty ;
  rdfs:label "Text" ;
  rdfs:domain jl:Annotations ;
  rdfs:range xsd:string .
```
#### jl:uuid
```
jl:uuid a owl:DatatypeProperty ;
  rdfs:label "UUID" ;
  rdfs:domain jl:Annotations ;
  rdfs:range xsd:string .
```
#### jl:status
```
jl:status a owl:DatatypeProperty ;
  rdfs:label "Status" ;
  rdfs:domain jl:Annotations ;
  rdfs:range xsd:string .
```
#### jl:published
```
jl:published a owl:DatatypeProperty ;
  rdfs:label "Published" ;
  rdfs:domain jl:Annotations ;
  rdfs:range xsd:boolean .
```
#### jl:issue-url
```
jl:issue-url a owl:ObjectProperty ;
  rdfs:label "Issue URL" ;
  rdfs:domain jl:Annotations ;
  rdfs:range xsd:anyURI .
```
#### jl:tag
```
jl:tag a owl:DatatypeProperty ;
  rdfs:label "Tag" ;
  rdfs:domain jl:Annotations ;
  rdfs:range rdfs:Literal .
```
#### jl:user
```
jl:user a owl:DatatypeProperty ;
  rdfs:label "User" ;
  rdfs:domain jl:Annotations ;
  rdfs:range xsd:string .
```
#### jl:timestamp
```
jl:timestamp a owl:DatatypeProperty ;
  rdfs:label "Timestamp" ;
  rdfs:domain jl:Annotations ;
  rdfs:range xsd:dateTime .
```
#### jl:ip
```
jl:ip a owl:DatatypeProperty ;
  rdfs:label "IP" ;
  rdfs:domain jl:Annotations ;
  rdfs:range xsd:string .
```
### Dataset

Class: jl:Dataset

#### jl:hasDescription
```
jl:datasetName a owl:DatatypeProperty ;
    rdfs:label "Desciption for the Dataset" ;
    rdfs:domain jl:Dataset ;
    rdfs:range rdfs:Literal .
```
#### jl:hasFiles
```
jl:datasetName a owl:DatatypeProperty ;
    rdfs:label "The files for the Dataset" ;
    rdfs:domain jl:Dataset ;
    rdfs:range rdfs:Literal .
```
#### jl:hasTitle
```
jl:hasTitle
    a owl:DatatypeProperty ;
    rdfs:label "title of the dataset"@en ;
    rdfs:comment "The human-readable title of the dataset."@en ;
    rdfs:domain jl:Dataset ;
    rdfs:range rdfs:Literal .
```
#### jl:createdAt
```
jl:datasetName a owl:DatatypeProperty ;
    rdfs:label "Created at" ;
    rdfs:domain jl:Dataset ;
    rdfs:range rdfs:xsdDate .
```
#### jl:hasAuthor
```
jl:datasetName a owl:DatatypeProperty ;
    rdfs:label "Creator Name" ;
    rdfs:domain jl:Dataset ;
    rdfs:range rdfs:Literal .
```
#### jl:hasAuthorEmail
```
jl:datasetName a owl:DatatypeProperty ;
    rdfs:label "Creator Email" ;
    rdfs:domain jl:Dataset ;
    rdfs:range rdfs:Literal .
```
#### jl:hasAuthorlink
```
jl:hasAuthorlink a owl:ObjectProperty ;
    rdfs:label "hasAuthorLink" ;
    rdfs:comment "Link to an external author page or authority record (e.g. ORCID, GND, VIAF, university profile)."@en ;
    rdfs:domain jl:Resource ;
    rdfs:range rdfs:Resource .
```
#### jl:hasDescription
```
jl:datasetName a owl:DatatypeProperty ;
    rdfs:label "Description" ;
    rdfs:domain jl:Dataset ;
    rdfs:range rdfs:Literal .
```
#### jl:hasSlug
```
jl:datasetName a owl:DatatypeProperty ;
    rdfs:label "Slug" ;
    rdfs:domain jl:Dataset ;
    rdfs:range rdfs:Literal .
```
#### jl:hasGraph
```
jl:datasetName a owl:DatatypeProperty ;
    rdfs:label "Graph" ;
    rdfs:domain jl:Dataset ;
    rdfs:range rdfs:Literal .
```
#### jl:isLoaded
```
jl:datasetName a owl:DatatypeProperty ;
    rdfs:label "Is loaded" ;
    rdfs:domain jl:Dataset ;
    rdfs:range rdfs:Boolean .
```
#### jl:hasCategory
```
jl:datasetName a owl:DatatypeProperty ;
    rdfs:label "Category" ;
    rdfs:domain jl:Dataset ;
    rdfs:range rdfs:Literal .
```
#### jl:hasExample
```
jl:datasetName a owl:DatatypeProperty ;
    rdfs:label "Exmaple URI" ;
    rdfs:domain jl:Dataset ;
    rdfs:range rdfs:URI .
```
#### jl:hasLicense
```
jl:datasetName a owl:DatatypeProperty ;
    rdfs:label "License" ;
    rdfs:domain jl:Dataset ;
    rdfs:range rdfs:Literal .
```
#### jl:hasSource
```
jl:datasetName a owl:DatatypeProperty ;
    rdfs:label "Source URI" ;
    rdfs:domain jl:Dataset ;
    rdfs:range rdfs:URI .
```
#### jl:gitCommit
```
jl:gitCommit
    a owl:DatatypeProperty ;
    rdfs:label "git commit"@en ;
    rdfs:comment "Identifier of the Git commit from which this dataset or resource was generated."@en ;
    rdfs:domain jl:Dataset ;
    rdfs:range xsd:string .
```
#### jl:gitWeb
```
jl:gitWeb
    a owl:DatatypeProperty ;
    rdfs:label "Git web URL"@en ;
    rdfs:comment "Web URL of the Git repository or specific commit associated with this dataset or resource."@en ;
    rdfs:domain jl:Dataset ;
    rdfs:range xsd:anyURI .
```
### Journal
Class: jl:Journal
```
jl:Journal a owl:Class ;
    rdfs:label "Journal"@en ;
    rdfs:comment "A scholarly or academic journal in which publications or articles appear."@en .
```
#### jl:subtitle
```
jl:subtitle
    a rdf:Property ;
    rdfs:label "subtitle"@en ;
    rdfs:comment "Subtitle of a journal."@en ;
    rdfs:range rdfs:Literal .
```
#### jl:placeOfPublication
```
jl:placeOfPublication
    a rdf:Property ;
    rdfs:label "place of publication"@en ;
    rdfs:comment "Place where a journal was published, as given by the library (text)."@en ;
    rdfs:range rdfs:Literal .
```
#### jl:publicationPeriod
```
jl:publicationPeriod
    a rdf:Property ;
    rdfs:label "publication period"@en ;
    rdfs:comment "Publication period of a journal as free text, as given by the library."@en ;
    rdfs:range rdfs:Literal .
```
#### jl:indexedPages
```
jl:indexedPages
    a rdf:Property ;
    rdfs:label "indexed pages"@en ;
    rdfs:comment "Number of pages of a journal in the Compact Memory full-text index."@en ;
    rdfs:range xsd:integer .
```
#### jl:meanOcrKnownWordShare
```
jl:meanOcrKnownWordShare
    a rdf:Property ;
    rdfs:label "mean OCR known-word share"@en ;
    rdfs:comment "Mean of jl:ocrKnownWordShare over the pages of a journal."@en ;
    rdfs:range xsd:decimal .
```
### Issue
Class: jl:Issue
#### jl:Issue
```
jl:Issue a owl:Class ;
    rdfs:label "Journal issue"@en ;
    rdfs:comment "A specific issue of a journal, usually identified by volume, number and year."@en .
```
#### jl:hasVisualRepresentation
```
jl:hasVisualRepresentation
    a rdf:Property ;
    rdfs:label "has visual representation"@en ;
    rdfs:comment "Links a resource to a visual representation such as an image or illustration."@en ;
    rdfs:range jl:Resource .
```
### Page
Class: jl:Page
### jl:Page
```
jl:Page a owl:Class ;
    rdfs:label "Page"@en ;
    rdfs:comment "A page or page range in a document or journal issue."@en .
```
#### jl:belongsToIssue
```
jl:belongsToIssue
    a rdf:Property ;
    rdfs:label "belongs to issue"@en ;
    rdfs:comment "Links a publication or article to the specific journal issue in which it was published."@en ;
    rdfs:range jl:Resource .
```
#### jl:belongsToJournal
```
jl:belongsToJournal
    a rdf:Property ;
    rdfs:label "belongs to journal"@en ;
    rdfs:comment "Links a publication or article to the journal in which it was published."@en ;
    rdfs:range jl:Resource .
```
#### jl:title
```
jl:title
    a rdf:Property ;
    rdfs:label "title"@en ;
    rdfs:comment "Title of a resource, such as a document, work, or dataset."@en ;
    rdfs:range rdfs:Literal .
```
#### jl:hasVisualRepresentation
```
jl:hasVisualRepresentation
    a rdf:Property ;
    rdfs:label "has visual representation"@en ;
    rdfs:comment "Links a resource to a visual representation such as an image or illustration."@en ;
    rdfs:range jl:Resource .
```
#### jl:pageSequence
```
jl:pageSequence
    a rdf:Property ;
    rdfs:label "page sequence"@en ;
    rdfs:comment "Position of a page within its issue or volume in the Visual Library of UB Frankfurt."@en ;
    rdfs:range xsd:integer .
```
#### jl:ocrKnownWordShare
```
jl:ocrKnownWordShare
    a rdf:Property ;
    rdfs:label "OCR known-word share"@en ;
    rdfs:comment "Share of the words of a page that are found in a word list derived from the corpus; an estimate of the OCR quality."@en ;
    rdfs:range xsd:decimal .
```

### Resource
Class: jl:Resource
#### jl:Resource
```
jl:Resource a owl:Class ;
    rdfs:label "Resource"@en ;
    rdfs:comment "Generic resource in the JudaicaLink knowledge graph (person, place, document, journal, issue, etc.)."@en .
```
#### jl:hasReference
```
jl:hasReference
    a rdf:Property ;
    rdfs:label "has reference"@en ;
    rdfs:comment "Reference or citation associated with a resource (e.g. bibliographic reference in an article)."@en ;
    rdfs:range rdfs:Literal .
```
### Corpus presence
Class: jl:CorpusPresence

How a resource of JudaicaLink occurs in a corpus of texts, e.g. how often and when a person is mentioned in the
journals of Compact Memory. One node per resource and corpus links the two (`jl:entity`, `jl:corpus`) and carries the
statistics, so that the same terms serve every corpus. The statistics are as good as the links they are counted from
(for Compact Memory: the automatic TagMe links of the dataset cm-tagme).

Example (the dataset cm-entities):

    <http://data.judaicalink.org/data/cm-entities/presence/dbpedia/A._E._Housman>
        a jl:CorpusPresence ;
        jl:entity <http://data.judaicalink.org/data/dbpedia/A._E._Housman> ;
        jl:corpus <http://data.judaicalink.org/data/compact-memory/corpus> ;
        jl:mentionCount "3"^^xsd:integer ;
        jl:pageCount "2"^^xsd:integer ;
        jl:firstMentionYear "1933"^^xsd:gYear ;
        jl:lastMentionYear "1934"^^xsd:gYear ;
        jl:journalCount "1"^^xsd:integer ;
        jl:mostFrequentJournal <http://data.judaicalink.org/data/compact-memory/2651273> .

#### jl:CorpusPresence
```
jl:CorpusPresence a owl:Class ;
    rdfs:label "Corpus presence"@en ;
    rdfs:comment "The occurrence of a resource (jl:entity) in a corpus of texts (jl:corpus), with statistics such as the number of mentions."@en .
```
#### jl:entity
```
jl:entity
    a rdf:Property ;
    rdfs:label "entity"@en ;
    rdfs:comment "Points to the JudaicaLink resource that this node is about: any resource, e.g. a record such as http://data.judaicalink.org/data/yivo/Moscow, a journal or a page; not specifically an entity page."@en ;
    rdfs:range rdfs:Resource .
```
#### jl:corpus
```
jl:corpus
    a rdf:Property ;
    rdfs:label "corpus"@en ;
    rdfs:comment "The corpus of texts that a jl:CorpusPresence is about, e.g. Compact Memory."@en ;
    rdfs:range rdfs:Resource .
```
#### jl:mentionCount
```
jl:mentionCount
    a rdf:Property ;
    rdfs:label "mention count"@en ;
    rdfs:comment "Number of mentions of the resource in the corpus."@en ;
    rdfs:range xsd:integer .
```
#### jl:pageCount
```
jl:pageCount
    a rdf:Property ;
    rdfs:label "page count"@en ;
    rdfs:comment "Number of pages of the corpus that mention the resource."@en ;
    rdfs:range xsd:integer .
```
#### jl:firstMentionYear
```
jl:firstMentionYear
    a rdf:Property ;
    rdfs:label "first mention year"@en ;
    rdfs:comment "Year of the earliest text of the corpus that mentions the resource."@en ;
    rdfs:range xsd:gYear .
```
#### jl:lastMentionYear
```
jl:lastMentionYear
    a rdf:Property ;
    rdfs:label "last mention year"@en ;
    rdfs:comment "Year of the latest text of the corpus that mentions the resource."@en ;
    rdfs:range xsd:gYear .
```
#### jl:journalCount
```
jl:journalCount
    a rdf:Property ;
    rdfs:label "journal count"@en ;
    rdfs:comment "Number of journals of the corpus that mention the resource (for corpora of periodicals)."@en ;
    rdfs:range xsd:integer .
```
#### jl:mostFrequentJournal
```
jl:mostFrequentJournal
    a rdf:Property ;
    rdfs:label "most frequent journal"@en ;
    rdfs:comment "The journal of the corpus with the most mentions of the resource (for corpora of periodicals)."@en ;
    rdfs:range jl:Resource .
```
### Reference
Class: jl:Reference

#### jl:Reference
```
jl:Reference a owl:Class ;
    rdfs:label "Reference"@en ;
    rdfs:comment "A bibliographic or in-text reference within a document, such as a citation or footnote."@en .
```
#### jl:hasSpot
```
jl:hasSpot
    a rdf:Property ;
    rdfs:label "has spot"@en ;
    rdfs:comment "Surface form (text span) in the source text that has been annotated."@en ;
    rdfs:range rdfs:Literal .
```
#### jl:hasStart
```
jl:hasStart
    a rdf:Property ;
    rdfs:label "has start offset"@en ;
    rdfs:comment "Start character offset of the annotated span in the source text."@en ;
    rdfs:range xsd:integer .
```
#### jl:hasEnd
```
jl:hasEnd
    a rdf:Property ;
    rdfs:label "has end offset"@en ;
    rdfs:comment "End character offset of the annotated span in the source text."@en ;
    rdfs:range xsd:integer .
```
#### jl:hasRho
```
jl:hasRho
    a rdf:Property ;
    rdfs:label "has rho"@en ;
    rdfs:comment "Confidence or relevance score (rho) of the annotation, as provided by the NLP tool."@en ;
    rdfs:range xsd:decimal .
```
#### jl:hasLinkProb
```
jl:hasLinkProb
    a rdf:Property ;
    rdfs:label "has link probability"@en ;
    rdfs:comment "Link probability or prior probability that the spotted text refers to the linked entity."@en ;
    rdfs:range xsd:decimal .
```


### Dataset statistics

Statistics stated in the metadata of a dataset version (its `-meta` file), beside those of VoID.

#### jl:currentSubjects
```
jl:currentSubjects
    a rdf:Property ;
    rdfs:label "current subjects"@en ;
    rdfs:comment "The number of distinct subjects of a dataset version that are current: not replaced (dcterms:isReplacedBy), merged (jl:mergedInto), split (jl:splitInto), retired (jl:retiredDate) or deprecated (owl:deprecated). void:distinctSubjects counts every IRI the data holds, including the ones kept only for their history, and so grows with every new IRI; for entity pages, jl:currentSubjects is the number of entities."@en ;
    rdfs:domain void:Dataset ;
    rdfs:range xsd:integer .
```

### Metadata

The JudaicaLink ontology is maintained on Github via the following document:

[https://github.com/judaicalink/judaicalink-ontology/blob/master/judaicalink-ontology.md](
https://github.com/judaicalink/judaicalink-ontology/blob/master/judaicalink-ontology.md)

You can create comments on the file and/or raise an [issue](https://github.com/judaicalink/judaicalink-ontology/issues).

