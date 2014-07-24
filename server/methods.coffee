Meteor.methods
	searchProducts: (request) ->
		console.log request.term
		searchResults = Products.find({title: request.term})
		console.log searchResults.count()
		autocompleteList = []

		searchResults.forEach ((product) ->
			listItem =
			value: product.title
			id: product._id
			price: product.variants[0].price
			this.push(listItem)
		), autocompleteList

		return autocompleteList
