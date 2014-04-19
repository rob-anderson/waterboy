$ ->
  $('[data-link]').click ->
    # alert($(this).data('link'))
    window.location = $(this).data('link')
