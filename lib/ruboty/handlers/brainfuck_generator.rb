require "ruboty/brainfuck_generator/actions/generate"

module Ruboty
  module Handlers
    class BrainfuckGenerator < Base
      on /brainfuck (?<text>.*?)/, name: 'brainfuck', description: 'generate brainfuck code'

      def brainfuck(message)
        Ruboty::BrainfuckGenerator::Actions::Generate.new(message).call
      end
    end
  end
end
