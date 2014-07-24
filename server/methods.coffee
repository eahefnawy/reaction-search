Meteor.methods
	searchProducts: (request) ->
      searchResults = Products.find()
      autocompleteList = []

      searchResults.forEach (product) ->
        listItem =
          value: product.title
          id: product._id
          price: product.variants[0].price
        autocompleteList.push(listItem)
        
      return autocompleteList

