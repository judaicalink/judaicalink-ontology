#!/usr/bin/env python3
with open("judaicalink-ontology.md", "r", encoding="utf-8") as f:
    with open("judaicalink-ontology.ttl", "w", encoding="utf-8") as out:
        in_code = False
        for line in f:
            if line.startswith("~~~") or line.startswith("```"):
                in_code = not in_code
                continue
            if in_code:
                out.write(line)
