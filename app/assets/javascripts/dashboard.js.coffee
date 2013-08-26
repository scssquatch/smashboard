$ ->
  $('.sidebar-close').click (e) ->
    e.preventDefault()
    $('.projects').removeClass('opened')
    $('.feed, .settings').removeClass('with-projects')
    $(this).addClass('hide')

  $('.menu').click (e) ->
    e.preventDefault()
    $('.feed').toggleClass('flip')
    $('.settings').toggleClass('flip')
