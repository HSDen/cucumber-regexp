require 'cucumber'
require 'rspec/expectations'
require 'require_all'
require 'page-object'
require 'data_magic'
require 'psych'

DataMagic.yml_directory = File.expand_path('.')+'/config/data'



World(DataMagic)