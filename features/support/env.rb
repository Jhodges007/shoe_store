require 'pry'
require 'watir'

PROJECT_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '../..'))

ENV['PATH'] = File.join(PROJECT_ROOT, 'tools') + ':' + ENV['PATH']
ENV['PATH'] = File.join(PROJECT_ROOT, 'tools') + ':' + ENV['PATH']

ENV['BROWSER'] ||= 'chrome'