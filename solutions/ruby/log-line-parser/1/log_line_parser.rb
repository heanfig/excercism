class LogLineParser
  attr_reader :message, :log_level

  LOG_LINE_PARSER_REGEX = /\[(\w+)\]:\s(.+)/

  def initialize(line)
    level,message = line.match(LOG_LINE_PARSER_REGEX).captures

    @line = line

    @log_level = level.downcase
    @message = message.strip
  end

  def reformat = "#{@message} (#{@log_level})"
end
