using HttpServer
using WebSockets

wsh = WebSocketHandler() do req,client
    while true
        msg = read(client)
        write(client, msg)
    end
  end

println("Master Server started ...")
server = Server(wsh)
run(server,8080)
