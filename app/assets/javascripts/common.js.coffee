jQuery ->
  $("select.reload-on-change").change ->
    this.form.submit()
