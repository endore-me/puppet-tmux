require 'rubygems'
require 'puppetlabs_spec_helper/rake_tasks'
require 'puppet-lint'

desc "Run lint check on puppet manifests"
task :lint do
  linter = PuppetLint.new
  Dir.glob('./manifests/**/*.pp').each do |puppet_file|
    puts "Evaluating #{puppet_file}"
    linter.file = puppet_file
    linter.run
  end
  fail if linter.errors?
end

task :ci => [ :lint, :spec ]
