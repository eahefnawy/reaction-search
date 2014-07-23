Template.searchBox.rendered = () ->

	$("#tags").autocomplete(
    minLength: 0
		source: (request, response) ->
      console.log Products.find()
      response Products.find()
  ).autocomplete("instance")._renderItem = (ul, item) ->
    $("<li>").append("<a>" + item.title + "<br>" + item.handle + "</a>").appendTo ul

