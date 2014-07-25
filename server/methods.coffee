Meteor.methods
	searchProducts: (request) ->
		searchResults = Products.find({title: {$regex : ".*#{request.term}.*", $options: "i"}}, {fields: {_id: 1, title: 1, variants: 1}})
		autocompleteList = []

		searchResults.forEach ((product) ->
			listItem =
				value: product.title
				id: product._id
				price: product.variants[0].price
			this.push(listItem)
		), autocompleteList

		return autocompleteList
