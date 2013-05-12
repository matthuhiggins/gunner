module Gunner
  autoload :Command,    'gunner/command'
  autoload :Connection, 'gunner/connection'
  autoload :Downloader, 'gunner/downloader'
  autoload :Gist,       'gunner/gist'  
  autoload :Runner,     'gunner/runner'

  class << self
    def run(gist_token)
      gist = Gunner::Gist.new(gist_token)
      gist.download
      gist.run
    end

    def run_command(command)
      run command.gist_token
    end
  end
end