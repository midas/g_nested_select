module GNestedSelect
  module ViewHelpers
    
    def g_nested_select( form, field, *args )
      options = args.extract_options!
      raise "You must include a 'parent_id' option for a nested select to render" unless options.has_key?( :parent_id )
      options[:class] ||= ''
      options[:ajax] ||= false
      options[:mapping_type] ||= :lookup
      options[:selected_value] = form.object.send( field.to_sym )
      select_options = Hash.new
      select_options[:include_blank] = (options.delete( :include_blank ) || false)
      klass = form.object.class.name.underscore
      options[:id] ||= "#{klass}_#{field.to_s}"
      html = ''

      Guilded::Guilder.instance.add( :nested_select, options, ['jquery/jquery-nested_select.min.js'] )

      if options.has_key?( :collection )
        collection = options.delete( :collection )
        html << form.select( field, collection, select_options )
      elsif options.has_key?( :mappings )
        mappings = options.delete( :mappings )
        html << "<select name=\"#{klass}[#{field.to_s}]\" id=\"#{klass}_#{field.to_s}\" class=\"#{options[:class].to_s}\">"
        html << "<option value=\"\"></option>" if select_options[:include_blank]
        html << grouped_options_for_select( mappings, options[:selected_value] )
        html << "</select>"      

        if options[:mapping_type].to_s == 'lookup'
          options[:mappings] = mappings.to_json
        elsif options[:mapping_type].to_s == 'html'
          html_mappings = Hash.new
          mappings.each { |key, mapping| html_mappings[key] = options_for_select( mapping ) }
          options[:mappings] = html_mappings.to_json
        else
          raise "The g_nested_select's 'mapping_type' option's value is not valid.  Please specify on of 'lookup' or 'html.'"
        end
      else
        throw "You must include either a 'collection' or 'mappings' option to render a g_nested_select"
      end

      return html
    end
    
  end
end