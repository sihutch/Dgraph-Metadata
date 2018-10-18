#! /bin/bash
curl localhost:8080/query -XPOST -d $'
{
me (func: eq(person_guid, "38947cfb-9a91-4e24-9143-d2245db16da1")) {
     person_name
  	 ~people {
       book_title
       book_guid
     }
  }
}
' | python -m json.tool | less
