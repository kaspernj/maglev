class Maglev::Client
  def initialize(@socket : TCPSocket)
    puts "Accepted socket: #{Time.now}"

    # @socket.close
  end

  def listen_in_thread
    Thread.new do
      listen
    end
  end

  def listen
    loop do
      line = @socket.gets

      puts "Line: #{line}"
    end
  end
end
