require_relative '../linters'

module Linters
  # Defines the default relationship between the run_and_filter, run and
  # filter_messages methods of linters (i.e. don't filter any lints)
  class Base
    def run_and_filter(file)
      filter_messages(run(file), file)
    end

    def filter_messages(lints, _file)
      lints
    end
  end
end
