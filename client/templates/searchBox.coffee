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
    return  $( "<li>" ).html("
      <a href='https://www.google.com'>
        something
      </a>").appendTo( ul )

    #$("img").attr("src", "https://www.google.com/images/srpr/logo11w.png")
    #return  $( "<li>" ).append( $( "<a>" ).attr("href","http://www.google.com").append($("<img>").attr("src", "https://www.google.com/images/srpr/logo11w.png")) ).appendTo( ul )

    ###
    <a href="http://www.google.com">
      <img src="https://www.google.com/images/srpr/logo11w.png" alt="Smiley face" height="42" width="42">
      <h4>Gold Ring</h4>
      <h4>Silver Ring</h4>
    </a>

    ###
