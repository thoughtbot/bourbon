$(document).ready ->
  calcTimingFunctionsDemo()

  $(window).resize ->
    calcTimingFunctionsDemo()

calcTimingFunctionsDemo = ->
  t_el = $('#timing-functions')
  demo_width = t_el.find('li').outerWidth()
  code_width = t_el.find('code').outerWidth()
  transition_space = demo_width - code_width + 60 + "px"
  styles = """
           <style media="screen" type="text/css" data-role="generated-demo">
             .main-content article#timing-functions section.demo:hover div.box {
               -webkit-transform: translateX(#{transition_space});
                  -moz-transform: translateX(#{transition_space});
                   -ms-transform: translateX(#{transition_space});
                    -o-transform: translateX(#{transition_space});
                       transform: translateX(#{transition_space});
             }
           </style>
           """
  $("[data-role='generated-demo']").remove()
  $('head').append(styles)
