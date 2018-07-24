# Ontology

## Namespaces
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

## skos:Concept

### jl:describedAt

```
jl:describedAt 
    a rdf:Property ;
    rdfs:comment "Link to textual resource of encyclopedia article"@en ;
    rdfs:label "described at" ;
    rdfs:domain skos:Concept ;
    rdfs:range foaf:Document .
```

