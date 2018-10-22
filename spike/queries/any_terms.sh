#! /bin/bash
curl localhost:8080/query -XPOST -d '
{
  me(func: anyofterms(book_title, "quick fox")) {
    book_title
  }
}' | python -m json.tool | less
