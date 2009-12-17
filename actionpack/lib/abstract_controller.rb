activesupport_path = File.expand_path('../../../activesupport/lib', __FILE__)
$:.unshift(activesupport_path) if File.directory?(activesupport_path) && !$:.include?(activesupport_path)

require 'active_support'
require 'active_support/core_ext/module/attr_internal'
require 'active_support/core_ext/module/delegation'

module AbstractController
  extend ActiveSupport::Autoload

  deferrable do
    autoload :Base
    autoload :Callbacks
    autoload :Helpers
    autoload :Layouts
    autoload :LocalizedCache
    autoload :Logger
    autoload :RenderingController
  end
end
