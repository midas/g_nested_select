/* Guilded Nested Select 1.0.0
 * Copyright (c) 2009 C. Jason Harrelson (midas)
 * Guilded Nested Select is licensed under the terms of the MIT License */

g.nestedSelectInit = function( options )
{
  if( !options )
    options = {};

  if( g.beforeNestedSelectInit )
  {
    g.beforeNestedSelectInit( options );
  }

  /* Setup a table to lookup nested selects for each nested select
   * control on this page */
  if( !g.nestedSelectRelations )
    g.nestedSelectRelations = {};

  if( !g.nestedSelectedValues )
    g.nestedSelectedValues = {};

  if( !g.nestedSelectMappings )
    g.nestedSelectMappings = {};

  g.nestedSelectRelations[options.parent_id] = options.id;
  g.nestedSelectedValues[options.id] = options.selected_value;

  if( !options.ajax )
    g.nestedSelectMappings[options.id] = eval( '(' + options.mappings + ')' );

  options['nsRelations'] = g.nestedSelectRelations;
  options['nsMappings'] = g.nestedSelectMappings;
  options['nsSelectedValues'] = g.nestedSelectedValues;
  $jid( options.id ).nestedSelect( options );

  if( g.afterNestedSelectInit )
  {
    g.afterNestedSelectInit( options );
  }
};