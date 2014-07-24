Template.searchBox.rendered = () ->

	$("#searchBox").autocomplete(
    minLength: 1
		source: (request, response) ->
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
    return  $( "<li>" ).html("
    <a class='search-item-anchor' href='" + item.url + "'>
      " + item.value + "
      <span class='search-item-price'>
        $" + item.price + "
      </span>
    </a>
      ").appendTo( ul )

    #$("img").attr("src", "https://www.google.com/images/srpr/logo11w.png")
    #return  $( "<li>" ).append( $( "<a>" ).attr("href","http://www.google.com").append($("<img>").attr("src", "https://www.google.com/images/srpr/logo11w.png")) ).appendTo( ul )

    ###

    ###
