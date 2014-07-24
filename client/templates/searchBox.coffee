Template.searchBox.rendered = () ->

	$("#searchBox").autocomplete(
    minLength: 1
		source: (request, response) ->
      # return array of results
      # create array for autocomplete
      arr = [
        {
          value: "Lady Gaga"
          url: "http://www.ladygaga.com"
          price: "12.35"
        }
        {
          value: "Lana Del Rey"
          url: "http://www.lanadelrey.com"
          price: "45.90"
        }
      ]
      response arr
  ).data("ui-autocomplete")._renderItem = (ul, item) ->

    htmlBlock = """
                  <a href="#{item.url}"> #{item.value}
                    <span class="search-item-price">
                      $#{item.price}
                    </span>
                  </a>
                """
    return  $( "<li>" ).html(htmlBlock).appendTo( ul )

  ###
  coffescript string intre
  coffescript array methods to fill up autocomplete array
  mongodb indexes

  ###
