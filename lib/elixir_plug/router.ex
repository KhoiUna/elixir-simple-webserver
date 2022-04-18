defmodule ElixirPlug.Router do
  use Plug.Router
  plug :match
  plug :dispatch

# Simple GET Request handler for path /hello
get "/" do
  send_resp(conn, 200, JSON.encode!(%{"hello" => "world"}))
end
# Basic example to handle POST requests wiht a JSON body

post "/post" do
  {:ok, body, conn} = read_body(conn)
  {_status, list} = JSON.decode(body)
  name = list["name"]
  send_resp(conn, 201, "Your name is: #{name}")
end

# "Default" route that will get called when no other route is matched
match _ do
  send_resp(conn, 404, "not found")
end

end
