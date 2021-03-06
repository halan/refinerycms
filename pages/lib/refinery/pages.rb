require 'refinerycms-core'
require 'awesome_nested_set'
require 'globalize3'
require 'friendly_id'
require 'seo_meta'

module Refinery
  autoload :PagesGenerator, 'generators/refinery/pages/pages_generator'

  module Pages
    require 'refinery/pages/engine' if defined?(Rails)
    require 'refinery/pages/configuration'
    require 'refinery/pages/tab'

    autoload :InstanceMethods, 'refinery/pages/instance_methods'

    class << self
      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def factory_paths
        @factory_paths ||= [ root.join('spec', 'factories').to_s ]
      end
    end

    module Admin
      autoload :InstanceMethods, 'refinery/pages/admin/instance_methods'
    end
  end
end
