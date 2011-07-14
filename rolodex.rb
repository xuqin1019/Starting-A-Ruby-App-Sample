require 'rubygems'
require 'bundler'
Bundler.require
require 'highline/import'
require './lib/utilities'
require File.expand_path(File.join('lib', "contact_info"))
require './lib/application'
include Application

Application.run!