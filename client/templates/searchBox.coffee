Template.searchBox.rendered = () ->

	availableTags = [
    "<h1>ActionScript</h1>"
    "AppleScript"
    "Asp"
    "BASIC"
    "C"
    "C++"
    "Clojure"
    "COBOL"
    "ColdFusion"
    "Erlang"
    "Fortran"
    "Groovy"
    "Haskell"
    "Java"
    "JavaScript"
    "Lisp"
    "Perl"
    "PHP"
    "Python"
    "Ruby"
    "Scala"
    "Scheme"
  ]

	$("#tags").autocomplete 
		source: availableTags