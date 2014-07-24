Template.searchBox.rendered = () ->

	$("#searchBox").autocomplete(
    minLength: 0
		source: (request, response) ->
      # return array of results
      # create array for autocomplete

      searchResults = Products.find()
      autocompleteList = []
      console.log autocompleteList
      console.log searchResults.count()

      searchResults.forEach (product) ->
        console.log "hello"
        console.log product.title
        console.log product._id
        console.log product.variants[0].price
        listItem =
          value: product.title
          id: product._id
          price: product.variants[0].price
        console.log listItem

      
        #autocompleteList.push(listItem)
        return

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
