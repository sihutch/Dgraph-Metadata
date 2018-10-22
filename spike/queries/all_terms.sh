#! /bin/bash
curl localhost:8080/query -XPOST -d $'
{
  #Note that use the "book" Type predicate
 me(func: has(book)) {
   expand(_all_)
  }
}
' | python -m json.tool | less
