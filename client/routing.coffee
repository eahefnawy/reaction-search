Router.map ->
  @route 'searchBox',
    controller: ShopAdminController
    path: 'searchbox',
    template: 'searchBox'
    waitOn: ->
      return ReactionCore.Subscriptions.Packages
      