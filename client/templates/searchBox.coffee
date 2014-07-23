Template.searchBox.rendered = () ->

	$("#tags").autocomplete(
    minLength: 0
		source: (request, response) ->
      console.log Products.find()
      arr = [
        {
          label: "this label"
          value: "this value"
          txt: "hellooooo"
        }
      ]
      response arr
  )._renderItem = (ul, item) ->
    $("<li>").append("<a>" + item.label + "<br>" + item.txt + "</a>").appendTo ul

