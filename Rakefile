require 'bundler'
Bundler::GemHelper.install_tasks

directory 'bourbon/lib'

desc "Generate bourbon directory for use outside Rails"
task :generate => 'bourbon/lib' do
  FileUtils.cp_r(Dir['app/assets/stylesheets/*'], 'bourbon/')
  FileUtils.cp_r(Dir['lib/*'], 'bourbon/lib/')

  FileUtils.rm_r('bourbon/lib/tasks')
  FileUtils.rm('bourbon/lib/bourbon/engine.rb')
  FileUtils.rm('bourbon/lib/bourbon/version.rb')
end
