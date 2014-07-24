Meteor.methods
	searchProducts: (request) ->
		console.log request.item
		searchResults = Products.find({title: request.item})
		autocompleteList = []
		console.log autocompleteList

		searchResults.forEach ((product) ->
			listItem =
			value: product.title
			id: product._id
			price: product.variants[0].price
			this.push(listItem)
		), autocompleteList

		return autocompleteList
