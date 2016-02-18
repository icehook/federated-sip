#!/usr/bin/env ruby
require 'erb'
require './opensips.var.rb'
require 'socket'

template = ERB.new(File.read('./opensips.cfg.erb'), nil, '-')

outfile = File.new('opensips.cfg', 'w');

outfile.puts template.result($erb_context)
