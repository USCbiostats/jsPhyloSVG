HTMLWidgets.widget({

  name: 'jsPhyloSVG',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance

    return {

      renderValue: function(x) {

        // TODO: code to render the widget, e.g.
        window.onload = function(){
        	YUI().use('oop', 'json-stringify', 'io-base', 'event', 'event-delegate', function(Y){
        	  phylocanvas = new Smits.PhyloCanvas(
        	    {newick: x.tree},
        	    el.id,
        	    width, height,
        	    x.layout
        	    );
        	});
        };

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
