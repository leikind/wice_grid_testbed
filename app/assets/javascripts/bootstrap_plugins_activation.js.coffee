jQuery ->
  $(".alert-message").alert()
  $(".tabs").button()
  $(".carousel").carousel()
  # $(".collapse").collapse() # without this collapsing works, but all elements are hidden on load
  $(".dropdown-toggle").dropdown()
  $(".modal").modal()
  $("a[rel=popover]").popover()
  $(".navbar").scrollspy()
  $(".tab").tab "show"
  $(".tooltip").tooltip()
  $(".typeahead").typeahead()
  $("a[rel=tooltip]").tooltip()

  $(".close").click ->
    $(this).parent().hide()


