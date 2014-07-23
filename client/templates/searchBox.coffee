Template.searchBox.rendered = () ->
###
	$("#tags").autocomplete(
        minLength: 0
		source: (request, response) ->
            response Products.find()
    ).autocomplete("instance")._renderItem = (ul, item) ->
        $("<li>").append("<a>" + item.title + "<br>" + item.handle + "</a>").appendTo ul
###


    projects = [
    {
      value: "jquery"
      label: "jQuery"
      desc: "the write less, do more, JavaScript library"
      icon: "jquery_32x32.png"
    }
    {
      value: "jquery-ui"
      label: "jQuery UI"
      desc: "the official user interface library for jQuery"
      icon: "jqueryui_32x32.png"
    }
    {
      value: "sizzlejs"
      label: "Sizzle JS"
      desc: "a pure-JavaScript CSS selector engine"
      icon: "sizzlejs_32x32.png"
    }
    ]
    $("#tags").autocomplete(
    minLength: 0
    source: projects
    ).autocomplete("instance")._renderItem = (ul, item) ->
    $("<li>").append("<a>" + item.label + "<br>" + item.desc + "</a>").appendTo ul

    return
