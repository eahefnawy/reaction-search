Template.searchBox.rendered = () ->

	$("#tags").autocomplete(
    minLength: 0
		source: (request, response) ->
      console.log request
      arr = [
        {
          label: "this label"
          value: "this value"
          txt: "hellooooo"
        }
      ]
      response arr
    _renderItem: (ul, item) ->
      return  $("<li>").append( $( "<a>" ).text( item.label ) ).append("<p>testing</p>").appendTo( ul )

  )
