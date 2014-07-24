Meteor.methods
	searchProducts: (request) ->

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

		console.log autocompleteList
		return autocompleteList
