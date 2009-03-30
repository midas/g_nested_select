$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'g_nested_select/view_helpers'

module GNestedSelect
  VERSION = '1.0.0'
end

if defined?( ActionView::Base )
  ActionView::Base.send( :include, GNestedSelect::ViewHelpers ) unless ActionView::Base.include?( GNestedSelect::ViewHelpers )
end