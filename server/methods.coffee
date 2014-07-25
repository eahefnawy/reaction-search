Meteor.methods
	searchProducts: (request) ->
		console.log request.term
		searchResults = Products.find({title: {$regex : ".*#{request.term}.*", $options: "i"}}, {fields: {_id: 1, title: 1, variants: 1}})
		console.log searchResults.fetch()[0].variants[0].price
		autocompleteList = []

		searchResults.forEach ((product) ->
			listItem =
			value: product.title
			id: product._id
			price: product.variants[0].price
			this.push(listItem)
		), autocompleteList

		return autocompleteList
