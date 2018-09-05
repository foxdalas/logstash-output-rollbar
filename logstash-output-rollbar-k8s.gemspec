Gem::Specification.new do |s|

  s.name            = 'logstash-output-rollbar-k8s'
  s.version         = '0.0.1'
  s.licenses        = ['Apache-2.0']
  s.summary         = "The Rollbar Logstash output sends events to the Rollbar error monitoring service."
  s.description     = "This gem is a logstash plugin. Install using: $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["Maxim Pogozhiy"]
  s.email           = 'foxdalas@gmail.com'
  s.homepage        = "https://github.com/foxdalas/logstash-output-rollbar"
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)+::Dir.glob('vendor/*')

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core', '>= 1.4.0', '< 7.0.0'

  s.add_development_dependency 'logstash-devutils'
end

