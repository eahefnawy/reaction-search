Template.searchBox.rendered = () ->

	$("#searchBox").autocomplete(
    minLength: 0
		source: (request, response) ->
      Meteor.call "searchProducts", request, (error, result) ->
        console.log error if error
        if result
          response result
  ).data("ui-autocomplete")._renderItem = (ul, item) ->

    htmlBlock = """
                  <a href="/product/#{item.id}"> #{item.value}
                    <span class="search-item-price">
                      $#{item.price}
                    </span>
                  </a>
                """
    return  $( "<li>" ).html(htmlBlock).appendTo( ul )

  ###
  mongodb indexes
  read meteor collections & meteor methods
  ###
