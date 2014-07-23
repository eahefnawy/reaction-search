Template.searchBox.rendered = () ->

	$("#tags").autocomplete
    minLength: 0
		source: (request, response) ->
      arr = [
        {
          label: "this label"
          value: "this value"
          txt: "hellooooo"
        }
      ]
      response arr
    _renderItem: (ul, item) ->
      return $("<li>").append("<p>Test</p>").appendTo(ul)


