Template.searchBox.rendered = () ->

	$("#tags").autocomplete(
    minLength: 0
		source: (request, response) ->
      console.log Products.find()
      arr = [
        {
          label: "label"
          value: "value"
        }
      ]
      response arr
  )._renderItem = (ul, item) ->
    $("<li>").append("<a>" + item.title + "<br>" + item.handle + "</a>").appendTo ul

