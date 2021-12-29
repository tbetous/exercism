class LogLineParser
  ERROR_TAG = 'ERROR'.freeze
  WARNING_TAG = 'WARNING'.freeze
  INFO_TAG = 'INFO'.freeze

  LOG_REGEXPS = {
    error: /^\[#{ERROR_TAG}\]:\s/,
    warning: /^\[#{WARNING_TAG}\]:\s/,
    info: /^\[#{INFO_TAG}\]:\s/
  }.freeze

  def initialize(line)
    @line = line
  end

  def message
    @line.sub(Regexp.union(LOG_REGEXPS.values), '').strip
  end

  def log_level
    return 'error' if error?
    return 'warning' if warning?

    'info'
  end

  def reformat
    "#{message} (#{log_level})"
  end

  LOG_REGEXPS.each do |type, regexp|
    define_method("#{type}?") do
      @line.match?(regexp)
    end
  end
end
