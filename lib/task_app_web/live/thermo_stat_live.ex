defmodule TaskAppWeb.ThermostatLive do
  use Phoenix.LiveView


   def mount(_session, _, socket) do
      {:ok, assign(socket, msg: "none")}
   end
def render(assigns) do
    ~L"""
    <h1> good </h1>
    <div phx-keydown="keydown" phx-target="window">
     <%= @msg %>
     </div>
    """
end


def handle_event("keydown", %{"key" => key}, socket) do
    {:noreply, assign(socket, msg: key)}
end
end
