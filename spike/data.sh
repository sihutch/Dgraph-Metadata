#! /bin/bash
curl localhost:8080/mutate -H "X-Dgraph-CommitNow: true" -XPOST -d $'
{
  set {
   # Roles
    _:rauthor <role_type> "Author" .
    #Empty predicate for Type
    _:rauthor <role> "" .

    _:reditor <role_type> "Editor" .
    #Empty predicate for Type
    _:reditor <role> "" .

    _:rill <role_type> "Illustrator" .
    #Empty predicate for Type
    _:rill <role> "" .

   # People
   _:author1 <person_orcid> "https://orcid.org/0000-0000-0000-001X" .
   _:author1 <person_guid> "38947cfb-9a91-4e24-9143-d2245db16da1" .
   _:author1 <person_name> "Author 1" .
   _:author1 <affiliations> _:org1 .
   _:author1 <affiliations> _:org2 .
   _:author1 <roles> _:rauthor .
   #Empty predicate for Type
   _:author1 <person> "" .

   _:author2 <person_orcid> "https://orcid.org/0000-0000-0000-002X" .
   _:author2 <person_guid> "38947cfb-9a91-4e24-9143-d2245db16da12" .
   _:author2 <person_name> "Author 2" .
   _:author2 <affiliations> _:org2 .
   _:author2 <roles> _:rauthor .
   #Empty predicate for Type
   _:author2 <person> "" .

   _:author3 <person_orcid> "https://orcid.org/0000-0000-0000-003X" .
   _:author3 <person_guid> "38947cfb-9a91-5e24-9143-d2245db16da3" .
   _:author3 <person_name> "Author 3" .
   _:author3 <affiliations> _:org2 .
   _:author3 <affiliations> _:org3 .
   _:author3 <roles> _:rauthor .
   #Empty predicate for Type
   _:author3 <person> "" .

   _:editor1 <person_orcid> "https://orcid.org/0000-0000-0000-011X" .
   _:editor1 <person_guid> "38947cfb-9a91-4e24-9143-d2245db16ed1" .
   _:editor1 <person_name> "Editor 1" .
   _:editor1 <affiliations> _:org1 .
   _:editor1 <affiliations> _:org2 .
   _:editor1 <roles> _:reditor .
   #Empty predicate for Type
   _:editor1 <person> "" .

   _:editor2 <person_orcid> "https://orcid.org/0000-0000-0000-012X" .
   _:editor2 <person_guid> "38947cfb-9a91-4e24-9143-d2245db16ed2" .
   _:editor2 <person_name> "Editor 2" .
   _:editor2 <affiliations> _:org2 .
   _:editor2 <roles> _:reditor .
   #Empty predicate for Type
   _:editor2 <person> "" .

   _:editor3 <person_orcid> "https://orcid.org/0000-0000-0000-013X" .
   _:editor3 <person_guid> "38947cfb-9a91-4e24-9143-d2245db16ed3" .
   _:editor3 <person_name> "Editor 3" .
   _:editor3 <affiliations> _:org2 .
   _:editor3 <affiliations> _:org3 .
   _:editor3 <roles> _:reditor .
   #Empty predicate for Type
   _:editor3 <person> "" .

   _:ill1 <person_orcid> "https://orcid.org/0000-0000-0000-021X" .
   _:ill1 <person_guid> "38947cfb-9a91-4e24-9143-d2245db16111" .
   _:ill1 <person_name> "Illustrator 1" .
   _:ill1 <affiliations> _:org1 .
   _:ill1 <roles> _:ill1 .
   #Empty predicate for Type
   _:ill1 <person> "" .

   _:ill2 <person_orcid> "https://orcid.org/0000-0000-0000-022X" .
   _:ill2 <person_guid> "38947cfb-9a91-4e24-9143-d2245db16112" .
   _:ill2 <person_name> "Illustrator 2" .
   _:ill2 <affiliations> _:org2 .
   _:ill2 <roles> _:ill2 .
   #Empty predicate for Type
   _:ill2 <person> "" .

   _:ill3 <person_orcid> "https://orcid.org/0000-0000-0000-023X" .
   _:ill3 <person_guid> "38947cfb-9a91-4e24-9143-d2245db16113" .
   _:ill3 <person_name> "Illustrator 3" .
   _:ill3 <affiliations> _:org2 .
   _:ill3 <affiliations> _:org3 .
   _:ill3 <roles> _:ill2 .
   #Empty predicate for Type
   _:ill3 <person> "" .

   # Organisations
   _:org1 <org_name> "Org 1" .
   _:org1 <org_guid> "eaa9392c-a3a4-41a9-88d2-cd20bfae0d01" .
   #Empty predicate for Type
   _:org1 <organisation> "" .

   _:org2 <org_name> "Org 2" .
   _:org2 <org_guid> "eaa9392c-a3a4-41a9-88d2-cd20bfae0d02" .
   #Empty predicate for Type
   _:org2 <organisation> "" .

   _:org3 <org_name> "Org 3" .
   _:org3 <org_guid> "eaa9392c-a3a4-41a9-88d2-cd20bfae0d03" .
   #Empty predicate for Type
   _:org3 <organisation> "" .

   #Books
   _:b1 <book_guid> "db44f821-e253-42ae-9bfd-64a256b9cdca" .
   _:b1 <book_doi> "10.1109/5.1" .
   _:b1 <book_title> "Book 1 - The quick" .
   _:b1 <book_publication_date> "1977-05-25" .
   _:b1ch1 <cpt_title> "Book 1 Chapter 1" .
   _:b1ch2 <cpt_title> "Book 1 Chapter 2" .
   _:b1 <people> _:author1 .
   _:b1 <book_chapters> _:b1ch1 .
   _:b1 <book_chapters> _:b1ch2 .
   #Empty predicate for Type
   _:b1 <book> "" .

   # book 2
   _:b2 <book_guid> "bcb19b91-4477-493d-b125-2bcfcc7d0e85" .
   _:b2 <book_doi> "10.1109/5.2" .
   _:b2 <book_title> "Book 2 - The quick brown fox" .
   _:b2 <book_publication_date> "2018-01-01" .
   _:b2ch1 <cpt_title> "Book 2 Chapter 1" .
   _:b2ch2 <cpt_title> "Book 2 Chapter 2" .
   _:b2ch3 <cpt_title> "Book 2 Chapter 3" .
   _:b2 <people> _:author2 .
   _:b2 <people> _:editor2 .
   _:b2 <people> _:ill1 .
   _:b2 <book_chapters> _:b2ch1 .
   _:b2 <book_chapters> _:b2ch2 .
   _:b2 <book_chapters> _:b2ch3 .
   #Empty predicate for Type
   _:b2 <book> "" .

   # book 3
   _:b3 <book_guid> "bcb19b91-4477-493d-b125-2bcfcc7d0e83" .
   _:b3 <book_doi> "10.1109/5.3" .
   _:b3 <book_title> "Book 3 - The quick brown fox jumped over the lazy dog" .
   _:b3 <book_publication_date> "2015-03-03" .
   _:b3ch1 <cpt_title> "Book 3 Chapter 1" .
   _:b3ch2 <cpt_title> "Book 3 Chapter 2" .
   _:b3ch3 <cpt_title> "Book 3 Chapter 3" .
   _:b3 <people> _:author2 .
   _:b3 <people> _:editor2 .
   _:b3 <book_chapters> _:b3ch1 .
   _:b3 <book_chapters> _:b3ch2 .
   _:b3 <book_chapters> _:b3ch3 .
   #Empty predicate for Type
   _:b3 <book> "" .
  }
}
' | python -m json.tool | less
