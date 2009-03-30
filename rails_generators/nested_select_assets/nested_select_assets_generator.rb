class NestedSelectAssetsGenerator < Rails::Generator::Base
  def initialize(runtime_args, runtime_options = {})
    super
  end

  def manifest
    record do |m|
      m.file "guilded.nested_select.js", "public/javascripts/guilded.nested_select.js"
      m.file "guilded.nested_select.min.js", "public/javascripts/guilded.nested_select.min.js"
      m.directory "public/javascripts/jquery"
      m.file "jquery-nested_select.js", "public/javascripts/jquery-nested_select.js"
      m.file "jquery-nested_select.min.js", "public/javascripts/jquery-nested_select.min.js"
    end
  end
end