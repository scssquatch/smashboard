$('.projects').html("<%=j render @projects %>")
$('.projects').addClass('opened')
$('.feed, .settings').addClass('with-projects')
$('.sidebar-close').removeClass('hide')
