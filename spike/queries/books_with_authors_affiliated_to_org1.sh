#! /bin/bash
curl localhost:8080/query -XPOST -d $'
{
 var (func: eq(org_name, "Org 1")) {
  	 ~affiliations {
       books as ~people
     }
  }

 me(func: uid(books)) {
     expand(_all_)
  }
}
' | python -m json.tool | less
