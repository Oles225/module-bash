#!/bin/bash

case $1 in
  "-u"| "--url")
      grep -o -E "https:\\/\\/([[:alnum:]]|\\.|\\/)+" "$2"
    ;;
  "-e" | "--email")
      grep -o -E -m1 "[[:alnum:]]+\\@[[:alpha:]]+\\.[[:alpha:]]+" "$2"
    ;;
esac
