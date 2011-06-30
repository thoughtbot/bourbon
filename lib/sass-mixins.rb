module SassMixins
  module Rails
    class Railtie < ::Rails::Railtie
      rake_tasks do
        load "tasks/install.rake"
      end
    end
  end
end
