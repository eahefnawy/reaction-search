Router.map ->
  @route 'search',
    controller: ShopAdminController
    path: 'dashboard/settings/search',
    template: 'search'
    waitOn: ->
      PackagesHandle
  @route 'searchtest',
    controller: ShopAdminController
    path: 'searchtest',
    template: 'stripetest'
    waitOn: ->
      PackagesHandle
      