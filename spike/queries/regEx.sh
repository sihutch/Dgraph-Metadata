#! /bin/bash
curl localhost:8080/query -XPOST -d '
{
  me(func: regexp(book_title, /^Book [23].*$/)) {
    book_title
  }
}' | python -m json.tool | less
