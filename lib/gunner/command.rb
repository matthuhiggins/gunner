module Gunner
  class Command
    attr_accessor :gist_token
    def initialize(args)
      @gist_token = args.shift
    end
  end
end