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
### jl:represents
```
jl:represents
    a rdf:Property ;
    rdfs:label "represents"@en ;
    rdfs:comment "Indicates that a resource represents, depicts, or stands for another entity. Used especially for images, digital objects, or abstract identifiers that refer to persons, places, works, or events."@en ;
    rdfs:range jl:Resource .
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

#### jl:title
```
jl:title
    a rdf:Property ;
    rdfs:label "title"@en ;
    rdfs:comment "Title of a resource, such as a document, work, or dataset."@en ;
    rdfs:range rdfs:Literal .
```
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
#### jl:belongsToJournal
```
jl:belongsToJournal
    a rdf:Property ;
    rdfs:label "belongs to journal"@en ;
    rdfs:comment "Links a publication or article to the journal in which it was published."@en ;
    rdfs:range jl:Resource .
```

#### jl:BleongsToIssue
```
jl:belongsToIssue
    a rdf:Property ;
    rdfs:label "belongs to issue"@en ;
    rdfs:comment "Links a publication or article to the specific journal issue in which it was published."@en ;
    rdfs:range jl:Resource .
```

#### jl:hasReference
```
jl:hasReference
    a rdf:Property ;
    rdfs:label "has reference"@en ;
    rdfs:comment "Reference or citation associated with a resource (e.g. bibliographic reference in an article)."@en ;
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
#### jl:hasVisualRepresentation
```
jl:hasVisualRepresentation
    a rdf:Property ;
    rdfs:label "has visual representation"@en ;
    rdfs:comment "Links a resource to a visual representation such as an image or illustration."@en ;
    rdfs:range jl:Resource .
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
### NLPAnnotation
Class: jl:NLPAnnotation

#### jl:NLPAnnotation
```
jl:NLPAnnotation a owl:Class ;
    rdfs:label "NLP Annotation"@en ;
    rdfs:comment "Annotation generated by an NLP tool (e.g. entity linking, text span detection, confidence scores)."@en .
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


### Metadata

The JudaicaLink ontology is maintained on Github via the following document:

[https://github.com/judaicalink/judaicalink-ontology/blob/master/judaicalink-ontology.md](
https://github.com/judaicalink/judaicalink-ontology/blob/master/judaicalink-ontology.md)

You can create comments on the file and/or raise an [issue](https://github.com/judaicalink/judaicalink-ontology/issues).

