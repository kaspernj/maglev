require "../spec_helper"

describe Maglev::Server do
  it "works" do
    server = Maglev::Server.new(host: "0.0.0.0", port: 4000)

    server.start
  end
end
