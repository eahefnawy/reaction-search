Meteor.app.packages.register(
  name: "reaction-search"
  provides: ['Search']
  label: "Search"
  description: "Search Package for Reaction Commerce"
  icon: "fa fa-search"
  settingsRoute: "dashboard/settings/search"
  hasWidget: false
  priority: "2"
  shopPermissions: [
    {
      label: "Search"
      permission: "/search"
      group: "Search"
    }
  ]
)