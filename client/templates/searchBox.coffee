Template.searchBox.rendered = () ->

	$("#searchBox").autocomplete(
    minLength: 0
		source: (request, response) ->
      # return array of results
      # create array for autocomplete

      searchResults = Products.find()
      console.log searchResults
      autocompleteList = []

      for item in searchResults

        listItem =
          value: item.title
          id: item._id #TODO: use product handle instead of product id
          price: item.variants[0].price

        autocompleteList.push(listItem)

      response autocompleteList
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
  coffescript array methods to fill up autocomplete array
  mongodb indexes

  ###
