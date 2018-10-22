#! /bin/bash
curl localhost:8080/query -XPOST -d $'
{
  me(func: anyoftext(book_title, "fox jump")) {
    book_title
  }
}
' | python -m json.tool | less
