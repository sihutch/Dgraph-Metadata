#! /bin/bash
curl localhost:8080/query -XPOST -d $'
{
me (func: eq(book_guid, "db44f821-e253-42ae-9bfd-64a256b9cdca")) {
     book_title
     book_guid
  	 people {
      person_name
     }
  }
}
' | python -m json.tool | less
