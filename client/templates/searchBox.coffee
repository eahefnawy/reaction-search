Template.searchBox.rendered = () ->

	$("#tags").autocomplete(
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
  ).data("ui-autocomplete")._renderItem = (ul, item) ->
    return  $( "<li>" ).append( $( "<a>" ).text( item.txt ).attr("href","http://www.google.com").append(img) ).appendTo( ul )

    #$("img").attr("src", "https://www.google.com/images/srpr/logo11w.png")



