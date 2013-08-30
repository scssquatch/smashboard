$ ->
  $('.description h3').click (e) ->
    e.preventDefault()
    $(this).siblings('.instructions').slideToggle()
