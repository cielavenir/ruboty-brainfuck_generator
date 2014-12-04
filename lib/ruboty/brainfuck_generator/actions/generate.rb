module Ruboty
  module BrainfuckGenerator
    module Actions
      class Generate < Ruboty::Actions::Base
        def call
          message.reply(message[:text].bytes.map{|b|'>'+'+'*b+'.'}*'')
        end
      end
    end
  end
end
