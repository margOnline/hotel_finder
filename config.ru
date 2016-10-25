require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'haml'
require 'json'
require './top_destinations'
require './lib/parsers/parser'
require './lib/models/hotel'

set :environment, :development
set :run, false
set :raise_errors, true

run Sinatra::Application