$(window).load ->
  class TooltipRotator
    itemInterval: 5000
    numberOfItems: $('.row').length
    currentItem: 0

    constructor: ->
      @showTooltip()
      @beginLoop()
      @watchForClick()

    showTooltip: () ->
      $('.row').eq(@currentItem).addClass 'active'
      dataRole = $('.row').eq(@currentItem).attr('data-role')
      $('.tooltip.' + dataRole).removeClass('hide').addClass('show')
      @positionTooltip($('.tooltip' + '.'+ dataRole))

    hideTooltip: () ->
      $('.row.active').removeClass 'active'
      $('.tooltip.show').removeClass('show').addClass('hide')

    beginLoop: () ->
        @infiniteLoop = setInterval(=>
          @changeTooltip()
        , @itemInterval)

    restartLoop: () ->
      clearInterval(@infiniteLoop)
      @beginLoop()

    watchForClick: () ->
      $('#browser-container').on 'click tapone', '.row', (e) =>
        target = e.currentTarget
        @currentItem = $(target).index()

        unless $(target).hasClass('active')
          @hideTooltip()

          dataRole = $(target).attr('data-role')
          $(target).addClass 'active'
          $('.tooltip' + '.' + dataRole).removeClass('hide').addClass('show')
          @positionTooltip($('.tooltip' + '.' + dataRole))

        @restartLoop()

    changeTooltip: () ->
      @hideTooltip()

      if @currentItem is @numberOfItems - 1
        @currentItem = 0
      else
        @currentItem++

      @showTooltip()

    positionTooltip: (el) ->
      viewportWidth = $(window).width()
      containerWidth = $('#browser-container').innerWidth()
      tooltipWidth  = $(el).innerWidth()

      do posTooltipX = () ->
        tooltipLeft      = $(el).offset().left
        tooltipRight     = viewportWidth - (tooltipLeft + tooltipWidth)
        containerMargins = ((viewportWidth - containerWidth) / 2)
        tooltipSpace     =  containerMargins + containerWidth
        newPosition      = tooltipSpace - (tooltipWidth + 15)
        setNewPosition   = $(el).css('left', newPosition)
        tooltipOffScreen = (tooltipWidth + tooltipLeft) >= (viewportWidth - 20)

        if tooltipOffScreen
          setNewPosition
        else
          $(el).css('left', '60%')

        if tooltipWidth >= containerWidth
          $(el).css('width', (containerWidth - 15))

      do posTooltipY = () ->
        ipadPortrait    = (viewportWidth <= 768) and (viewportWidth > 640)
        iphonlandscape = viewportWidth <= 640
        tooltipHasRoom  = tooltipWidth < containerWidth
        rowPos          = $('.row.active').position().top
        tooltipHeight   = $(el).innerHeight()

        posTooltipBottom = () ->
          $(el).css('top', rowPos + 21)

        if tooltipHasRoom
          centerPos = rowPos - (tooltipHeight / 2) + 6;
          $(el).css('top', centerPos)

        if ipadPortrait
          if tooltipWidth > (containerWidth * 0.75)
            $(el).addClass('pos-under')
            posTooltipBottom()

        else if iphonlandscape
          posTooltipBottom()

        if !ipadPortrait
          $(el).removeClass('pos-under')

  new TooltipRotator()
