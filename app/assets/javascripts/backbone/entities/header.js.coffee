@CoffeeShop.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

	class Entities.Header extends Entities.Model
		#modelMethods

	class Entities.HeaderCollection extends Entities.Collection
		model: Entities.Header

		# collectionMethods

	API =
		getHeaders: ->
			new Entities.HeaderCollection [
				{ name: "Users" }
				{ name: "Neighborhoods" }
				{ name: "Coffee Shops" }
			]


	App.reqres.setHandler "header:entities", ->
		API.getHeaders()