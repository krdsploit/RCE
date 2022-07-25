#!/usr/bin/ruby

require 'drb'

class SHELL
    def exec(cmd)
        '#{cmd}'
    end
end
DRb.start_services("druby://0.0.0.0:8080", SHELL.new)
DRb.thread.join

