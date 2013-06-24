# References jQuery
$ = jQuery

# Adds plugin object to jQuery
$.fn.extend {}=
  # Change the pluginName.
  Boilerplate: (options) ->
    that = this;    

    timestamp = () ->
      (Math.random() + "").substr(-10)

    # Simple logger.  
    log = (msg) ->
      console?.log msg if settings.debug      

    # Default settings
    settings =
      ui: "easy_mode"
      site_name: "My Site" 
      debug: false
      callback: null # can provide a callback to be executed when complete
      
    # Merge default settings with options.
    settings = $.extend settings, options
    
    # _Insert magic here._
    @each ()->
      log("stuff")
      $(this).attr('id',timestamp)      
      # actually perform the callback  
    settings.callback.call this  if $.isFunction(settings.callback)
    this

