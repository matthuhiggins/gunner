
module Gunner
  autoload :Command,    'gunner/command'
  autoload :Connection, 'gunner/connection'

  class << self
    def run(gist_token)
      files = Gunner::Connection.gist_info(gist_token)['files']

      if files['Gunfile'].nil?
        raise "Gist #{gist_token} is missing Gunfile"
      end
    end

    def run_command(command)
      run command.gist_token
    end
  end
end