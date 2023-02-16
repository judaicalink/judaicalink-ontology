## Ontology Documentation

The JudaicaLink Ontology can be obtained via [http://ontology.judaicalink.org/](http://ontology.judaicalink.org)

This is the main ontology document. All other representations are generated automatically from this document.

- [Turtle](judaicalink-ontology.ttl)

### Namespaces
The following namespaces are used in this ontology:

```
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
#### jl:deathDate
```
jl:deathDate
    a rdf:Property ;
    rdfs:label "death date"@en ;
    rdfs:comment "The date of death of the person"@en ;
    rdfs:range rdfs:Literal .
```
#### jl:birthLocation 
```
jl:birthLocation 
    a rdf:Property ;
    rdfs:label "birth location"@en ;
    rdfs:comment "The location of birth of the person"@en ;
    rdfs:range rdfs:Literal .
```
#### jl:deathLocation 
```
jl:deathLocation 
    a rdf:Property ;
    rdfs:label "death location"@en ;
    rdfs:comment "The location of death of the person"@en ;
    rdfs:range rdfs:Literal .
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

@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix skos: <http://www.w3.org/2004/02/skos/core#> .
@prefix owl: <http://www.w3.org/2002/07/owl#> .
@prefix gndo: <http://d-nb.info/standards/elementset/gnd#> .
@prefix jl: <http://data.judaicalink.org/ontology/> .
@prefix foaf: <http://xmlns.com/foaf/0.1/> .
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix geo: <http://www.opengis.net/ont/geosparql#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

# define the class Annotations
jl:Annotations a owl:Class ;
  rdfs:label "Annotations" .

# define the properties of Annotations
jl:text a owl:DatatypeProperty ;
  rdfs:label "Text" ;
  rdfs:domain jl:Annotations ;
  rdfs:range xsd:string .

jl:uuid a owl:DatatypeProperty ;
  rdfs:label "UUID" ;
  rdfs:domain jl:Annotations ;
  rdfs:range xsd:string .

jl:status a owl:DatatypeProperty ;
  rdfs:label "Status" ;
  rdfs:domain jl:Annotations ;
  rdfs:range xsd:string .

jl:published a owl:DatatypeProperty ;
  rdfs:label "Published" ;
  rdfs:domain jl:Annotations ;
  rdfs:range xsd:boolean .

jl:issue-url a owl:ObjectProperty ;
  rdfs:label "Issue URL" ;
  rdfs:domain jl:Annotations ;
  rdfs:range xsd:anyURI .

jl:tags a owl:DatatypeProperty ;
  rdfs:label "Tags" ;
  rdfs:domain jl:Annotations ;
  rdfs:range rdfs:Literal .

jl:user a owl:DatatypeProperty ;
  rdfs:label "User" ;
  rdfs:domain jl:Annotations ;
  rdfs:range xsd:string .

jl:timestamp a owl:DatatypeProperty ;
  rdfs:label "Timestamp" ;
  rdfs:domain jl:Annotations ;
  rdfs:range xsd:dateTime .

jl:ip a owl:DatatypeProperty ;
  rdfs:label "IP" ;
  rdfs:domain jl:Annotations ;
  rdfs:range xsd:string .


### Metadata

The JudaicaLink ontology is maintained on Github via the following document:

[https://github.com/wisslab/judaicalink-ontology/blob/master/judaicalink-ontology.md](
https://github.com/wisslab/judaicalink-ontology/blob/master/judaicalink-ontology.md)

You can create comments on the file and/or raise an [issue](https://github.com/wisslab/judaicalink-ontology/issues).

