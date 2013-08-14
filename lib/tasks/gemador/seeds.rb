module Gemador
  module Seeds

    class << self
      def load_seed file
        require "tasks/setup/#{file}"
      end

      def image(name, type = 'jpg')
        images_path = Pathname.new(File.join(File.dirname(__FILE__), '..', 'setup', 'images'))
        path = images_path + "#{name}.#{type}"
        raise "Cannot find image named: #{name}.#{type}" unless File.exist?(path)
        File.open(path)
      end
    end

  end
end