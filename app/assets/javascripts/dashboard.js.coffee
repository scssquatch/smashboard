$ ->
  $('.sidebar-close').click (e) ->
    e.preventDefault()
    $('.projects').removeClass('opened')
    $('.feed, .settings').removeClass('with-projects')
    $(this).addClass('hide')

  $(document).on 'click', '.offices a', (e) ->
    e.preventDefault()
    $('.projects').addClass('opened')
    $('.feed, .settings').addClass('with-projects')
    $('.sidebar-close').removeClass('hide')

  $('.menu').click (e) ->
    e.preventDefault()
    $('.feed').toggleClass('flip')
    $('.settings').toggleClass('flip')
