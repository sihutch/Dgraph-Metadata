#! /bin/bash
curl localhost:8080/alter -XPOST -d $'
  book_guid: string @index(exact) .
  book_doi: string @index(exact) .
  book_title: string @index(term) .
  book_publication_date: datetime @index(day) .

  person_orcid: string @index(exact) .
  person_guid: string @index(exact) .
  person_name: string @index(term) .

  org_name: string @index(term) .
  org_guid: string @index(exact) .

  cpt_title: string @index(term) .

  role_type: string @index(term) .

  affiliations: uid @reverse .
  roles: uid @reverse .
  people : uid @reverse .

' | python -m json.tool | less
