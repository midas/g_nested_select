/*
 * jquery Nested Select plugin
 * by Jason Harrelson 2009-03-27
 */
(function($)
{
/* ************************************************************************** */
var options = null;
var afterNestedLoad = null; // Event that is fired after a nested select is loaded

jQuery.fn.nestedSelect = function( opts )
{
  options = $.extend( jQuery.fn.nestedSelect.defaults, opts );
  setUpNestedSelect( this );
  return jQuery;
};

/* *************** public *************** */

jQuery.fn.nestedSelect.defaults =
{

};

/* *************** private *************** */

setUpNestedSelect = function( /* jquery Collection */ t )
{
  var select = $( '#' + options.id );
  var parent = $( '#' + options.parent_id );
  select.empty();
  parent.change( handleParentChange );
  if( $( '#' + options.parent_id + ' :selected' ).text() != "" )
  {
    afterNestedLoad = selectInitialValue;
    parent.change();
  }
};

selectInitialValue = function( loadedId )
{
  afterNestedLoad = null;
  $( '#' + loadedId ).val( options['nsSelectedValues'][loadedId] )
};

handleParentChange = function( e )
{
  var nsId = options['nsRelations'][e.target.id];
  $( '#' + nsId ).empty();
  selectedText = $( '#' + e.target.id + ' :selected' ).text();
  nsMappings = options['nsMappings'];
  var html = null;

  if( options.mapping_type == 'lookup' )
  {
    if( nsMappings[nsId][selectedText] == null )
      return;

    html = "<option value=\"\"></option>";
    $.each( nsMappings[nsId][selectedText], function( i, mapping )
    {
      html += "<option value=\"" + mapping[1] + "\">" + mapping[0] + "</option>"
    });
  }
  else // mapping type = html
  {
    if( nsMappings[nsId][selectedText] == null )
      return;

    html = "<option value=\"\"></option>" + nsMappings[nsId][selectedText];
  }
  
  $( '#' + nsId ).append( html );

  if( afterNestedLoad )
    afterNestedLoad( nsId );
};

/* ************************************************************************** */
})(jQuery);