Meteor.methods
	searchProducts: (request) ->

		searchResults = Products.find()
		autocompleteList = []
		console.log autocompleteList

		searchResults.forEach (product, autocompleteList) ->
			listItem =
			value: product.title
			id: product._id
			price: product.variants[0].price
			console.log this
			#this.push(listItem)

		return autocompleteList

