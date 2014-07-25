Meteor.methods
	searchProducts: (request) ->
		console.log request.term
		searchResults = Products.find({title: {$regex : ".*#{request.term}.*"}}, {fields: {_id: 0, title: 0, variants: 1}})
		console.log searchResults.fetch()
		autocompleteList = []

		searchResults.forEach ((product) ->
			listItem =
			value: product.title
			id: product._id
			price: product.variants[0].price
			this.push(listItem)
		), autocompleteList

		return autocompleteList
