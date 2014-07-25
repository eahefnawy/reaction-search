Template.searchBox.rendered = () ->

	$("#searchBox").autocomplete(
    minLength: 1
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
  better mongodb filtering criteria
  read meteor collections & meteor methods
  ###
###
db.Products.find({$text:{$search:"Lady Gaga"}},{_id:1, title:1, variants:1})
db.Products.runCommand("text",{search:" tutorialspoint "})
###