
module MailRoom
  class CrashHandler

    attr_reader :error, :format

    SUPPORTED_FORMATS = %w[json plain]

    def initialize(error:, format:)
      @error = error
      @format = format
    end

    def handle
      if format == 'json'
        puts json
        return
      end

      # 'plain' is equivalent to outputting the error into stdout as-is
      raise error
    end

    private

    def json
      { time: Time.now, severity: :fatal, message: error.message, backtrace: error.backtrace }.to_json
    end
  end
end
