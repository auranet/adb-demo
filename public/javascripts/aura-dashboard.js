jQuery(function() {
  window.dashboard = jQuery('#dashboard').dashboard({
    emptyPlaceholderInner: '<a href="/">Add some more widgets to your dashboard.</a>',
    ajaxCallbacks: {
      getWidgetsByColumn: {
        url: '/demo/widgets'
      },
      saveColumns: {
        url: '/demo/save_dashboard',
      },
      getWidget: {
        url: '/demo/bar_selector',
        data: {
          fields: ['activated_avg_profit', 'activated_avg_revenue']
        }
      }
    },
    widgetCallbacks: {
      get: function() {
        var widget = this;
        eval(widget.js);
      },
    }
  });
});
