require "socket"

class Maglev::Server
  def initialize(@host : String, @port : Int32)
    puts "Host: #{@host}, port: #{@port}"
    @clients = [] of Maglev::Client
  end

  def start
    server = TCPServer.new(@host, @port)

    loop do
      socket = server.accept

      client = Maglev::Client.new(socket: socket)
      @clients << client

      client.listen_in_thread
    end
  end
end
