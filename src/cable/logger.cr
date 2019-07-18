module Cable
  class Logger
    @@show : Bool = true
    @@messages = [] of String

    def self.suppress_output
      @@show = false
    end

    def self.show_output
      @@show = true
    end

    def self.info(message)
      return Logger.info message if @@show
      @@messages << message
    end

    def self.reset_messages
      @@messages = [] of String
    end

    def self.messages
      @@messages
    end
  end
end
